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

function select_if_homonyme(PlUser &$user) {
    return XDB::fetchOneCell("SELECT  a.alias
                                FROM  aliases AS a
                               WHERE  a.uid = {?} AND a.expire != ''",
                             $user->id());
}

function send_warning_homonyme(PlUser &$user, $loginbis) {
    global $globals;
    $cc = "support+homonyme@" . $globals->mail->domain;
    $FROM = "\"Support Polytechnique.org\" <$cc>";
    $mymail = new PlMailer();
    $mymail->setFrom($FROM);
    $mymail->addCc($cc);
    $mymail->setSubject("Dans 2 semaines, suppression de $loginbis@" . $globals->mail->domain);
    $mymail->setTxtBody(Env::v('mailbody'));
    $mymail->sendTo($user);
}

function send_robot_homonyme(PlUser &$user, $loginbis) {
    global $globals;
    $cc = "support+homonyme@" . $globals->mail->domain;
    $FROM = "\"Support Polytechnique.org\" <$cc>";
    $mymail = new PlMailer();
    $mymail->setFrom($FROM);
    $mymail->setSubject("Mise en place du robot $loginbis@" . $globals->mail->domain);
    $mymail->addCc($cc);
    $mymail->setTxtBody(Env::v('mailbody'));
    $mymail->sendTo($user);
}

function switch_bestalias(PlUser &$user, $loginbis) {
    // check if loginbis was the bestalias
    $bestailas = XDB::fetchOneCell("SELECT  alias
                                      FROM  aliases
                                     WHERE  uid = {?} AND FIND_IN_SET('bestalias', flags)",
                                   $user->id());
    if ($bestalias && $bestalias != $loginbis) {
        return false;
    }

    // select the shortest alias still alive
    $newbest = XDB::fetchOneCell("SELECT  alias
                                    FROM  aliases
                                   WHERE  uid = {?} AND alias != {?} AND expire IS NULL
                                ORDER BY  LENGTH(alias)
                                   LIMIT  1", $user->id(), $loginbis);
    // change the bestalias flag
    XDB::execute("UPDATE  aliases
                     SET  flags = (flags & (255 - 1)) | IF(alias = {?}, 1, 0)
                   WHERE  uid = {?}", $newbest, $user->id());
    return $newbest;
}

// vim:set et sw=4 sts=4 sws=4 foldmethod=marker enc=utf-8:
?>