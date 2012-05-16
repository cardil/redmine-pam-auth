# Copyright (C) 2011  David Villa Alises
# Copyright (C) 2012  Krzysztof Suszynski
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

require 'rubygems'
require 'rpam'
include Rpam


class AuthSourcePam < AuthSource

  def authenticate(login, password)
    logger.debug "Replacement PAM auth called" if logger && logger.debug?
    logger.debug "Tring to login as: \"#{login}\"" if logger && logger.debug?

    return nil if not authpam(login, password)
    logger.debug "Authenticated as \"#{login}\" using password with PAM auth" if logger && logger.debug?

    return [:firstname => login]
  end

  def auth_method_name
    "PAM"
  end

end
