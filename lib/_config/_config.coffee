# These values get propagated through the app
# E.g. The 'name' and 'subtitle' are used in seo.coffee

@Config =

	# Basic Details
	name: 'dineR'
	title: ->
			TAPi18n.__ 'configTitle'
	subtitle: ->
			'Match with delicious meals in your area!'
	step1Text: ->
			'Start browsing dineR’s selection of local creations tailored for you'
	step2Text: ->
			'With a simple swipe customize your order to make your perfect meal'
	step3Text: ->
			'Choose pickup or delivery and enjoy!'
	sectionIpadHeader: ->
			'Our meal always swipes right!'
	sectionIpadParagraph: ->
			'Finding your perfect meal has never been easier with dineR!'
	logo: ->
		'<b>' + @name + '</b>'
	footer: ->
		@name + ' - Copyright ' + new Date().getFullYear()

	# Emails
	emails:
		from: 'no-reply@' + Meteor.absoluteUrl()
		contact: 'hello' + Meteor.absoluteUrl()

	# Username - if true, users are forced to set a username
	username: false
	
	# Localisation
	defaultLanguage: 'en'
	dateFormat: 'D/M/YYYY'

	# Meta / Extenrnal content
	privacyUrl: 'http://meteorfactory.io'
	termsUrl: 'http://meteorfactory.io'

	# For email footers
	legal:
		address: 'Jessnerstrasse 18, 12047 Berlin'
		name: 'Meteor Factory'
		url: 'http://benjaminpeterjones.com'

	about: 'http://meteorfactory.io'
	blog: 'http://learn.meteorfactory.io'

	socialMedia:
		facebook:
			url: 'http://facebook.com/benjaminpeterjones'
			icon: 'facebook'
		twitter:
			url: 'http://twitter.com/BenPeterJones'
			icon: 'twitter'
		github:
			url: 'http://github.com/yogiben'
			icon: 'github'
		info:
			url: 'http://meteorfactory.io'
			icon: 'link'

	#Routes
	homeRoute: '/'
	publicRoutes: ['home']
	dashboardRoute: '/dashboard'
	homeRoute: '/'