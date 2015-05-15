from bottle import route, run, view
import yelp

@route('/hello')
def hello():
    return "Hello World!"

@route('/boba')
@view('boba_template')
def boba():
    response = yelp.query_api("Bubble Tea", "Mountain View, CA")
    businesses = response.get('businesses')

    return dict(businesses=businesses)


run(host='localhost', port=8080, debug=True)