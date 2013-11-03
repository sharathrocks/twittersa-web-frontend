package twittersa
import org.scribe.model.Token
import grails.converters.JSON

class ApplicationController {
	def oauthService
    def grailsApplication
    def springSecurityService
	
    def index() { }
	def start () {
		println "inside application controller"
		session.abc="xyz"
		println "session.abc="+session.abc
	}
	def initOauthForAppSignin () {
		println "inside application controller"
		session.abc="xyz"
		println "session.abc="+session.abc
	}
	def twitterCallback () {
		println "inside twitter callback"
		println "outside1= "+session[oauthService.findSessionKeyForAccessToken('twitter')]
		println "session.abc="+session.abc
		//session[oauthService.findSessionKeyForAccessToken('twitter')] = new Token(params.oauth_token,params.oauth_token_secret)
		redirect(action:'afterCallback')
	}
	def afterCallback () {
		println "inside afterCallback"
		def abc = oauthService.findSessionKeyForAccessToken('twitter')
		println "abc = "+abc
		println "outside= "+session['twitter:oasAccessToken']
		
		Token tAT = session[oauthService.findSessionKeyForAccessToken('twitter')]
		println "token = "+tAT
		def resourceURL = "https://api.twitter.com/1.1/search/tweets.json?q=slingbox&count=10"
		try{
			def twitterResource = oauthService.getTwitterResource(tAT, resourceURL)
			def twitterResponse = JSON.parse(twitterResource?.getBody())
			println "slingbox search = "+twitterResponse		
		} catch(Exception ex) {
			println "Error "+ex
		}
		
	}
	
	def twitterCallbackSuccess () {
		println "inside twitter callback success"
		redirect(action:'afterCallback')
	}
	
	def twitterCallbackFailure () {
		println "inside twitter callback failure"
	}
	
	def searchTweets () {
		def resourceURL = "https://api.twitter.com/1.1/search/tweets.json?lang=en&count=10&result_type=mixed&q="
		def searchString = params.searchString
		resourceURL+=searchString
		
		Token tAT = session[oauthService.findSessionKeyForAccessToken('twitter')]
		def twitterResource = oauthService.getTwitterResource(tAT, resourceURL)
		def twitterResponse = JSON.parse(twitterResource?.getBody())
		
		response.contentType='application/json'
		render twitterResponse
	}
	
}
