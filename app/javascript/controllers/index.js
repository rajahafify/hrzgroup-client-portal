import { application } from "./application"
import { registerControllers } from "@hotwired/stimulus-loading"

registerControllers(application, import.meta.glob("./**/*_controller.js", { eager: true }))
