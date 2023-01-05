# frozen_string_literal: true

# This file is part of the plugin Redmine Cookie Consent.
#
# Copyright (C) 2020-2023 Liane Hampe <liane.hampe@xmera.de>, xmera Solutions GmbH.
#
# This plugin program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.

require File.expand_path('lib/redmine_cookie_consent', __dir__)

Redmine::Plugin.register :redmine_cookie_consent do
  name 'Redmine Cookie Consent plugin'
  author 'Liane Hampe, xmera Solutions GmbH'
  description 'Inform users about the use of cookies in Redmine'
  version '0.1.0'

  url 'https://circle.xmera.de/redmine-cookie-consent'
  author_url 'https://circle.xmera.de/users/5'
end
