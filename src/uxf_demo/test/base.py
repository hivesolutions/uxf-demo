#!/usr/bin/python
# -*- coding: utf-8 -*-

# Hive UX Framework
# Copyright (c) 2008-2020 Hive Solutions Lda.
#
# This file is part of Hive UX Framework.
#
# Hive UX Framework is free software: you can redistribute it and/or modify
# it under the terms of the Apache License as published by the Apache
# Foundation, either version 2.0 of the License, or (at your option) any
# later version.
#
# Hive UX Framework is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# Apache License for more details.
#
# You should have received a copy of the Apache License along with
# Hive UX Framework. If not, see <http://www.apache.org/licenses/>.

__author__ = "João Magalhães <joamag@hive.pt>"
""" The author(s) of the module """

__version__ = "1.0.0"
""" The version of the module """

__revision__ = "$LastChangedRevision$"
""" The revision number of the module """

__date__ = "$LastChangedDate$"
""" The last change date of the module """

__copyright__ = "Copyright (c) 2008-2020 Hive Solutions Lda."
""" The copyright for the module """

__license__ = "Apache License, Version 2.0"
""" The license for the module """

import json
import unittest

import uxf_demo

class BaseTest(unittest.TestCase):

    def setUp(self):
        self.app = uxf_demo.app
        self.app.config["APPLICATION_ROOT"] = "/"
        self.client = self.app.test_client()

    def test_users_json(self):
        result = self._get("/users.json")
        self.assertEqual(
            [item["name"] for item in result],
            ["Ana Silva", "Bruno Costa", "Carla Dias", "Diogo Faria", "Elena Gomez"]
        )
        self.assertEqual(
            result[0],
            dict(
                object_id = 1,
                name = "Ana Silva",
                age = 31,
                country = 1,
                created = 1767225600
            )
        )

    def test_countries_json(self):
        result = self._get("/countries.json")
        self.assertEqual(
            result,
            [
                dict(object_id = 1, name = "Portugal"),
                dict(object_id = 2, name = "Spain"),
                dict(object_id = 3, name = "France")
            ]
        )

        result = self._get("/countries.json?filters[]=object_id:equals:2&number_records=2")
        self.assertEqual(result, [dict(object_id = 2, name = "Spain")])

    def test_list_json(self):
        result = self._names("/users.json?filter_string=e")
        self.assertEqual(result, ["Elena Gomez"])

        result = self._names("/users.json?filter_string=SILVA")
        self.assertEqual(result, [])

        result = self._names("/users.json?filters[]=country:equals:2&filters[]=age:greater:30")
        self.assertEqual(result, ["Elena Gomez"])

        result = self._names("/users.json?filters[]=name&filters[]=name:like&filters[]=country:equals:3")
        self.assertEqual(result, ["Diogo Faria", "Gisele Martin"])

        result = self._names("/users.json?filters[]=unknown:equals:1")
        self.assertEqual(result, [])

        result = self._names("/users.json?filters[]=name:like:a:b")
        self.assertEqual(result, [])

    def test_list_json_sort(self):
        result = self._names("/users.json?sort=age:ascending&number_records=3")
        self.assertEqual(result, ["Filipe Lopes", "Carla Dias", "Ana Silva"])

        result = self._names("/users.json?sort=age:descending&number_records=3")
        self.assertEqual(result, ["Diogo Faria", "Bruno Costa", "Gisele Martin"])

        result = self._names("/users.json?sort=name:descending&number_records=2")
        self.assertEqual(result, ["Hugo Nunes", "Gisele Martin"])

        result = self._names("/users.json?sort=age&number_records=2")
        self.assertEqual(result, ["Filipe Lopes", "Carla Dias"])

        for sort in ("default:descending", "unknown:ascending", ""):
            result = self._names("/users.json?number_records=2&sort=" + sort)
            self.assertEqual(result, ["Ana Silva", "Bruno Costa"])

        result = self._names("/users.json?filter_string=z&sort=age:ascending")
        self.assertEqual(result, [])

    def test_list_json_range(self):
        result = self._names("/users.json?start_record=6&number_records=5")
        self.assertEqual(result, ["Gisele Martin", "Hugo Nunes"])

        result = self._names("/users.json?start_record=8")
        self.assertEqual(result, [])

        result = self._names("/users.json?number_records=-1")
        self.assertEqual(len(result), 8)

        result = self._names("/users.json?start_record=-3&number_records=1")
        self.assertEqual(result, ["Ana Silva"])

        result = self._names("/users.json?number_records=0")
        self.assertEqual(result, [])

        result = self._names("/users.json?start_record=abc&number_records=abc")
        self.assertEqual(len(result), 5)

    def test_matches(self):
        _matches = uxf_demo.views.web.base._matches

        self.assertEqual(_matches(None, "equals", "1"), False)

        self.assertEqual(_matches(31, "equals", "31"), True)
        self.assertEqual(_matches(31, "equals", "31.0"), True)
        self.assertEqual(_matches(31, "equals", "32"), False)
        self.assertEqual(_matches(31, "greater", "30"), True)
        self.assertEqual(_matches(31, "greater", "31"), False)
        self.assertEqual(_matches(31, "lesser", "31.5"), True)
        self.assertEqual(_matches(31, "lesser", "31"), False)
        self.assertEqual(_matches(31, "equals", "abc"), False)
        self.assertEqual(_matches(31, "like", "3"), False)
        self.assertEqual(_matches(31, "unknown", "31"), False)

        self.assertEqual(_matches(1767225600, "in_day", "1767225600"), True)
        self.assertEqual(_matches(1767311999, "in_day", "1767225600"), True)
        self.assertEqual(_matches(1767312000, "in_day", "1767225600"), False)
        self.assertEqual(_matches(1767225599, "in_day", "1767225600"), False)

        self.assertEqual(_matches("Ana Silva", "like", "a s"), True)
        self.assertEqual(_matches("Ana Silva", "like", "costa"), False)
        self.assertEqual(_matches("Ana Silva", "rlike", "ANA"), True)
        self.assertEqual(_matches("Ana Silva", "rlike", "silva"), False)
        self.assertEqual(_matches("Ana Silva", "llike", "silva"), True)
        self.assertEqual(_matches("Ana Silva", "llike", "ana"), False)
        self.assertEqual(_matches("Ana Silva", "equals", "ana silva"), True)
        self.assertEqual(_matches("Ana Silva", "equals", "ana"), False)
        self.assertEqual(_matches("Ana Silva", "greater", "1"), False)
        self.assertEqual(_matches("Ana Silva", "in_day", "0"), False)
        self.assertEqual(_matches("Ana Silva", "unknown", "ana"), False)

    def _get(self, url):
        response = self.client.get(url)
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.mimetype, "application/json")
        return json.loads(response.get_data(as_text = True))

    def _names(self, url):
        return [item["name"] for item in self._get(url)]
