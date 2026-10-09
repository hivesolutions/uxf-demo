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

from uxf_demo.main import app
from uxf_demo.main import flask

COUNTRIES = (
    dict(object_id = 1, name = "Portugal"),
    dict(object_id = 2, name = "Spain"),
    dict(object_id = 3, name = "France")
)
""" The sequence of countries served by the countries
endpoint, the ones referenced by the users """

USERS = (
    dict(object_id = 1, name = "Ana Silva", age = 31, country = 1, created = 1767225600),
    dict(object_id = 2, name = "Bruno Costa", age = 45, country = 1, created = 1767312000),
    dict(object_id = 3, name = "Carla Dias", age = 28, country = 2, created = 1767398400),
    dict(object_id = 4, name = "Diogo Faria", age = 52, country = 3, created = 1767484800),
    dict(object_id = 5, name = "Elena Gomez", age = 37, country = 2, created = 1767571200),
    dict(object_id = 6, name = "Filipe Lopes", age = 23, country = 1, created = 1767657600),
    dict(object_id = 7, name = "Gisele Martin", age = 41, country = 3, created = 1767744000),
    dict(object_id = 8, name = "Hugo Nunes", age = 34, country = 1, created = 1767830400)
)
""" The sequence of users served by the users endpoint,
to be listed by the (advanced) filter example """

@app.route("/", methods = ("GET",))
@app.route("/index", methods = ("GET",))
def index():
    return flask.render_template(
        "index.html.tpl",
        link = "home",
        form = dict(),
        errors = dict()
    )

@app.route("/form", methods = ("POST",))
def form_action():
    return flask.render_template(
        "index.html.tpl",
        link = "form",
        form = dict(),
        errors = dict(
            name = ["Invalid name"],
            age = ["Invalid age"]
        )
    )

@app.route("/users.json", methods = ("GET",))
def users_json():
    return _list_json(USERS)

@app.route("/countries.json", methods = ("GET",))
def countries_json():
    return _list_json(COUNTRIES)

def _list_json(items):
    # retrieves the various components of the query, using
    # the names and the syntax of the json data source
    filter_string = flask.request.args.get("filter_string", "")
    filters = flask.request.args.getlist("filters[]")
    sort = flask.request.args.get("sort", "")
    start_record = flask.request.args.get("start_record", 0, type = int)
    number_records = flask.request.args.get("number_records", 5, type = int)

    # filters the items by the search string, that
    # should be the start of the name of the item
    filter_string = filter_string.lower()
    items = [item for item in items if item["name"].lower().startswith(filter_string)]

    # iterates over the filters to unpack each of them into the name,
    # the operation and the value, filtering the items accordingly
    for filter in filters:
        parts = filter.split(":", 2)
        if not len(parts) == 3: continue
        name, operation, value = parts
        items = [item for item in items if _matches(item.get(name), operation, value)]

    # unpacks the sort string into the name and the order and sorts
    # the items in case the name is the one of an attribute of them
    name, _separator, order = sort.partition(":")
    if items and name in items[0]:
        items = sorted(
            items,
            key = lambda item: item[name],
            reverse = order == "descending"
        )

    # serializes the requested range of items as the response
    items = items[start_record:start_record + number_records]
    return flask.Response(
        json.dumps(items),
        mimetype = "application/json"
    )

def _matches(target, operation, value):
    # in case the item has no such attribute
    # it's never considered to be a match
    if target == None: return False

    # runs the text based operations, comparing the
    # value with the textual representation of the target
    target_s = str(target).lower()
    value = value.lower()
    if operation == "like": return value in target_s
    if operation == "rlike": return target_s.startswith(value)
    if operation == "llike": return target_s.endswith(value)
    if operation == "equals": return target_s == value

    # converts the value into a number, required by the remaining
    # operations, an invalid value is never considered to be a match
    try: value = float(value)
    except ValueError: return False

    # runs the number based operations, a day is the range
    # of seconds that starts in the value (timestamp)
    if operation == "greater": return target > value
    if operation == "lesser": return target < value
    if operation == "in_day": return value <= target < value + 86400
    return False
