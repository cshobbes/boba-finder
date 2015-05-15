from bottle import route, run, view
import yelp
import pprint

@route('/hello')
def hello():
    return "Hello World!"

@route('/boba')
@view('boba_template')
def boba():
    response = yelp.query_api("Bubble Tea", "Mountain View, CA", 5)
    businesses = response.get('businesses')

    pprint.pprint(businesses)

    return dict(businesses=businesses)


run(host='localhost', port=8080, debug=True)