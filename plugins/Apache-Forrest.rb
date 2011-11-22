##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Apache-Forrest" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-11-19
version "0.1"
description "Apache Forrest software is a publishing framework that transforms input from various sources into a unified presentation in one or more output formats. - Homepage: https://forrest.apache.org/"

# Examples #
examples %w|
https://forrest.apache.org
www.target-x.de
www.varietee.com.au
vitables.org
medallionsystem.com
techsol.ca
www.inqwell.com
kirtlandflightcenter.org
www.roughbros.com
stephane.galles.free.fr
scriptella.javaforge.com
www.skiclub-troisdorf.de
apfw.sourceforge.net
www.primordion.com/Cellontro/
|

# Matches #
matches [

# Meta Generator
{ :text=>'<meta content="Apache Forrest" name="Generator"' },

# Meta Forrest-version # Version Detection
{ :version=>/<meta content="([^"^>]+)" name="Forrest-version"/ },
{ :version=>/<meta name="Forrest-version" content="([^"^>]+)"/ },

# Meta Forrest-theme-name
{ :module=>/<meta content="([^"^>]+)" name="Forrest-theme-name"/ },
{ :module=>/<meta name="Forrest-theme-name" content="([^"^>]+)"/ },

# Meta Forrest-skin-name
{ :module=>/<meta name="Forrest-skin-name" content="([^"^>]+)"/ },
{ :module=>/<meta content="([^"^>]+)" name="Forrest-skin-name"/ },

]

end
