#!/usr/bin/php5 -q
<?php
/***************************************************************************
 *  Copyright (C) 2003-2011 Polytechnique.org                              *
 *  http://opensource.polytechnique.org/                                   *
 *                                                                         *
 *  This program is free software; you can redistribute it and/or modify   *
 *  it under the terms of the GNU General Public License as published by   *
 *  the Free Software Foundation; either version 2 of the License, or      *
 *  (at your option) any later version.                                    *
 *                                                                         *
 *  This program is distributed in the hope that it will be useful,        *
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of         *
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the          *
 *  GNU General Public License for more details.                           *
 *                                                                         *
 *  You should have received a copy of the GNU General Public License      *
 *  along with this program; if not, write to the Free Software            *
 *  Foundation, Inc.,                                                      *
 *  59 Temple Place, Suite 330, Boston, MA  02111-1307  USA                *
 ***************************************************************************/

/**
 * Requires destruction of aliases: a first notification 10 days before
 * destruction, a second on the date.
 */
require 'connect.db.inc.php';

$resRobot = XDB::iterator("SELECT  uid, alias, expire
                             FROM  aliases
                            WHERE  (expire = NOW() + INTERVAL 7 DAY OR expire <= NOW())
                                   AND type = 'alias'");
while ($old = $resRobot->next()) {
    $res = XDB::query('SELECT  a.hruid
                         FROM  homonyms AS h
                   INNER JOIN  accounts AS a ON (h.uid = a.uid)
                        WHERE  homonyme_id = {?}',
                      $old['id']);
    $hruids = $res->fetchColumn();

    $homonym = User::getSilent($old['id']);
    $req = new HomonymeReq($homonym, $old['alias'], $hruids, $old['expire'] > date("Y-m-d"));
    $req->submit();
}

// vim:set et sw=4 sts=4 sws=4 foldmethod=marker enc=utf-8:
?>