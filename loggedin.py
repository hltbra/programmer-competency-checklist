import webapp2
import jinja2
import os.path
from google.appengine.api import users
from google.appengine.ext import db
from skills import big_areas, skill_hash_function, slugify, reverse


jinja2_env = jinja2.Environment(loader=jinja2.FileSystemLoader(os.path.dirname(__file__)))


class Home(webapp2.RequestHandler):

    def get(self):
        user = users.get_current_user()
        template = jinja2_env.get_template('index.html')
        values = {
            "user_is_loggedin": False,
            "enumerate": enumerate,
            "reverse": reverse,
            "len": len,
            "slugify": slugify,
            "big_areas": big_areas,
            "logout_url": users.create_logout_url("/"),
            "login_url": users.create_login_url(self.request.uri),
        }
        if user:
            values.update({
                "user_is_loggedin": True,
                "name": user.nickname(),
                "user_skills": self.get_skills(user),
            })
        self.response.out.write(template.render(values))

    def get_skills(self, user):
        q = db.GqlQuery("SELECT * FROM User WHERE userid = :1", user.user_id())
        u = q.get()
        if u:
            return u.skills
        else:
            return []


class Save(webapp2.RequestHandler):

    def post(self):
        current_user = users.get_current_user()
        if current_user:
            q = db.GqlQuery("SELECT * FROM User WHERE userid = :1", current_user.user_id())
            user = q.get()
            if not user:
                user = User(userid=current_user.user_id())
                user.put()
            user.skills = [arg for arg in self.request.arguments() if self.request.get(arg) == "on"]
            user.save()
            self.redirect("/")


class User(db.Model):

    userid = db.StringProperty()
    skills = db.StringListProperty()

app = webapp2.WSGIApplication([
    ("/", Home),
    ("/save", Save)],
    debug=True)