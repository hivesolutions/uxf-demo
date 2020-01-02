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

import flask #@UnusedImport

import quorum

SECRET_KEY = "kyjbqt4822ky8fdlbifwgawt60erk8wg"
""" The "secret" key to be at the internal encryption
processes handled by flask (eg: sessions) """

app = quorum.load(
    name = __name__,
    secret_key = SECRET_KEY,
    logger = "uxf_demo.debug"
)

import uxf_demo.views #@UnusedImport

if __name__ == "__main__":
    quorum.run(server = "netius")
else:
    __path__ = []
