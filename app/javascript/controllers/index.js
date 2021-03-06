// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"
import StimulusReflex from 'stimulus_reflex'
import consumer from '../channels/consumer'
import controller from '../controllers/application_controller'
import CableReady from 'cable_ready'
import Radiolabel from 'radiolabel'

import ApplicationController from "./application_controller.js"
application.register("application", ApplicationController)

import CounterController from "./counter_controller.js"
application.register("counter", CounterController)
application.register('radiolabel', Radiolabel)
import SearchController from "./search_controller.js"
application.register("search", SearchController)
application.consumer = consumer
StimulusReflex.initialize(application, { controller, isolate: true })
StimulusReflex.debug = true
CableReady.initialize({ consumer })


