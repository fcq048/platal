{**************************************************************************}
{*                                                                        *}
{*  Copyright (C) 2003-2008 Polytechnique.org                             *}
{*  http://opensource.polytechnique.org/                                  *}
{*                                                                        *}
{*  This program is free software; you can redistribute it and/or modify  *}
{*  it under the terms of the GNU General Public License as published by  *}
{*  the Free Software Foundation; either version 2 of the License, or     *}
{*  (at your option) any later version.                                   *}
{*                                                                        *}
{*  This program is distributed in the hope that it will be useful,       *}
{*  but WITHOUT ANY WARRANTY; without even the implied warranty of        *}
{*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *}
{*  GNU General Public License for more details.                          *}
{*                                                                        *}
{*  You should have received a copy of the GNU General Public License     *}
{*  along with this program; if not, write to the Free Software           *}
{*  Foundation, Inc.,                                                     *}
{*  59 Temple Place, Suite 330, Boston, MA  02111-1307  USA               *}
{*                                                                        *}
{**************************************************************************}

<h1>Administration Polytechnique.org</h1>

<table class="bicol" cellpadding="3" summary="Services">
  <tr><th colspan="2">{icon name=wrench} Services</th></tr>
  <tr class="impair">
    <td class="titre">Postfix</td>
    <td>
      <a href="admin/postfix/blacklist">Blacklist</a>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="admin/postfix/whitelist">Whitelist</a>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="admin/postfix/delayed">Retardés</a>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="admin/postfix/regexp_bounces">Regexps Bounces</a>
    </td>
  </tr>
  <tr class="pair">
    <td class="titre">Accès au site</td>
    <td>
      <a href="admin/auth-groupes-x">Auth Groupes X</a>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="admin/logger">Logs des sessions</a>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="admin/logger/actions">Actions</a>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="admin/ipwatch">IP surveillées</a>
    </td>
  </tr>
  <tr class="impair">
    <td class="titre">Emails</td>
    <td>
      <a href="admin/lists">MLs</a>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="admin/mx/broken">MX défaillants</a>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="admin/emails/lost">Perdus de vue</a>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="admin/emails/watch">Surveillés</a>
    </td>
  </tr>
  <tr class="pair">
    <td class="titre">Forums</td>
    <td>
      <a href="admin/forums">Gestion des mises au ban</a>
    </td>
  </tr>
  <tr class="impair">
    <td class="titre">Trésorerie</td>
    <td>
      <a href="admin/payments">Paiements</a>
    </td>
  </tr>
  <tr class="pair">
    <td class="titre">Divers</td>
    <td>
      <a href="admin/downtime">Coupures</a>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="admin/icons">Icônes</a>
    </td>
  </tr>

</table>

<br />

<table class="bicol" cellpadding="3" summary="Utilisateurs">
  <tr><th colspan="2">{icon name=user_suit} Utilisateurs</th></tr>
  <tr class="impair">
    <td class="titre">Comptes</td>
    <td>
      <a href="admin/promo">Ajout promotion</a>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="admin/user">Edition</a>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="admin/homonyms">Homonymes</a>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="admin/deaths">Décès</a>
    </td>
  </tr>
  <tr class="pair">
    <td class="titre">AX</td>
    <td>
      <a href="admin/ax-xorg">AX/X.org</a>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="admin/synchro_ax">Synchro AX</a>
    </td>
  </tr>
  <tr class="impair">
    <td class="titre">Administration</td>
    <td>
      <a href="admin/dead-but-active">Décédés actifs</a>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="admin/accounts">Administrateurs/Désactivations</a>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="admin/googleapps">Google Apps</a>
    </td>
  </tr>

  <tr><th colspan="2">{icon name=user_gray} Champs</th></tr>
  <tr class="impair">
    <td class="titre">Emploi</td>
    <td>
      <a href="admin/formations">Formations</a>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="admin/secteurs">Secteurs</a>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="admin/ss_secteurs">Sous-secteurs</a>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="admin/fonctions">Fonctions</a>
    </td>
  </tr>
  <tr class="pair">
    <td class="titre">Profil</td>
    <td>
      <a href="admin/binets">Binets</a>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="admin/medals">Décorations</a>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="admin/sections">Sections</a>
    </td>
  </tr>
  <tr class="impair">
    <td class="titre">Géoloc</td>
    <td>
      <a href="admin/geoloc">Synchro</a>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="admin/geoloc/dynamap">Dynamap</a>
    </td>
  </tr>
  <tr class="pair">
    <td class="titre">Compte</td>
    <td>
      <a href="admin/skins">Skins</a>
    </td>
  </tr>
</table>

<br />

<table class="bicol" cellpadding="3" summary="Contenu éditorial">
  <tr><th colspan="2">{icon name=page_edit} Editorial</th></tr>
  <tr class="impair">
    <td class="titre">Page d'accueil</td>
    <td>
      <a href="admin/tips">Astuces</a>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="admin/events">Événements</a>
    </td>
  </tr>
  <tr class="pair">
    <td class="titre">Newletter</td>
    <td>
      <a href="admin/newsletter">Liste</a>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="admin/newsletter/categories">Catégories</a>
    </td>
  </tr>
  <tr class="impair">
    <td class="titre">AX-Letter</td>
    <td>
      <a href="ax/edit">Edition</a>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="admin/axletter">Inscriptions et Permissions</a>
    </td>
  </tr>
  <tr class="pair">
    <td class="titre">Wiki</td>
    <td>
      <a href="admin/wiki">Pages et permissions</a>
    </td>
  </tr>
  <tr class="impair">
    <td class="titre">Sondages</td>
    <td>
      <a href="survey/admin">Gestion des sondages</a>
    </td>
  </tr>
  <tr class="pair">
    <td class="titre">Validations</td>
    <td>
      <a href="admin/validate/answers">Réponses automatiques</a>
    </td>
  </tr>
</table>

{* vim:set et sw=2 sts=2 sws=2 enc=utf-8: *}