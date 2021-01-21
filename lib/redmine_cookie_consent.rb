# frozen_string_literal: true

# This file is part of the plugin Redmine Cookie Consent.
#
# Copyright (C) 2020-2021 Liane Hampe <liaham@xmera.de>, xmera.
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

##
# Use the call hook in the head section of Redmine's base layout
# to inject the required javascript and css files for displaying the
# cookie banner.
#
module RedmineCookieConsent
  # Simple Hook Listener to render on Redmine's call hooks
  class HookListener < Redmine::Hook::ViewListener
    render_on :view_layouts_base_html_head,
              partial: 'redmine_cookie_consent/base_html_head'
  end
end
