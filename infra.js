import { Load } from '/vendor/akiyatkin/load/Load.js'
import { Config } from '/vendor/infrajs/config/Config.js'
import { CallFrame } from '/vendor/akiyatkin/waitshow/CallFrame.js'
import { inViewport } from '/vendor/akiyatkin/load/inViewport.js'

inViewport(document.body, () => {
	let cls = cls => document.getElementsByClassName(cls)[0]
	let init = async () => {
		let btn = cls('flashing-html')
		let html = await Load.fire('text', '-flashing-callback/layout.tpl')
		btn.innerHTML = html
	}
	let conf = Config.get('flashing-callback')

	if (!conf.trigger) {
		init()
	} else {
		let status = false
		let btn = cls('flashing-html')
		let check = () => {
			let el = document.getElementById(conf.trigger)
			if (!el) return
			let r = el.getBoundingClientRect()
			if (r.top > 0) {
				btn.style.opacity = 0
			} else {
				btn.style.opacity = 1
				if (!status) {
					status = true
					init()
				}
			}
		}
		let handler = () => CallFrame(check, 200)
		window.addEventListener('scroll', handler)
	}
})






