<?php
/***************************************************************************
 *  Copyright (C) 2003-2008 Polytechnique.org                              *
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

class XorgPage extends PlPage
{
    public function __construct()
    {
        parent::__construct();

        // Set the default page
        $this->changeTpl('platal/index.tpl');
        $this->addJsLink('xorg.js');
        $this->setTitle('le site des élèves et anciens élèves de l\'École polytechnique');
    }

    public function run()
    {
        global $globals, $platal;
        if (isset($platal) && $platal->path == 'register') {
            $skin = $globals->register_skin . ".tpl";
        } else {
            $skin = S::v('skin', $globals->skin . ".tpl");
        }
        $this->_run('skin/' . $skin);
    }
}

// vim:set et sw=4 sts=4 sws=4 foldmethod=marker enc=utf-8:
?>