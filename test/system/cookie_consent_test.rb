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
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. be able to use the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.

require File.expand_path('../test_helper', __dir__)

class CookieConsentTest < ApplicationSystemTestCase

  fixtures :users

  def setup
    super
    Capybara.current_session.reset!
  end

  test 'anonymous user should be able to use cookie consent' do
    visit home_path
    assert page.has_selector?('span#cookieconsent\\:desc')
    page.find('a.cc-btn.cc-DISMISS').click
    assert page.has_no_selector?('span#cookieconsent\\:desc')
  end

  test 'admin user should be able to use cookie consent' do
    log_user 'admin', 'admin'
    visit home_path
    assert page.has_selector?("span#cookieconsent\\:desc")
    page.find('a.cc-btn.cc-DISMISS').click
    assert page.has_no_selector?('span#cookieconsent\\:desc')
  end

  test 'non-admin user should be able to use cookie consent' do
    log_user 'jsmith', 'jsmith'
    visit home_path
    assert page.has_selector?("span#cookieconsent\\:desc")
    page.find('a.cc-btn.cc-DISMISS').click
    assert page.has_no_selector?('span#cookieconsent\\:desc')
  end

end
