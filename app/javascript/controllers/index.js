// Load all the controllers within this directory and all subdirectories.
// Controller files must be named *_controller.js.

import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

const application = Application.start()
const context = require.context("controllers", true, /_controller\.js$/)
application.load(definitionsFromContext(context))

<<<<<<< HEAD
console.log("hello index");

application.register("visibility", VisibilityController)
=======
>>>>>>> 553a0eb2946e7ad8ee866566fabb41af6c9de522
