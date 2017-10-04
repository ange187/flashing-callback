<div>
	<style scoped>
		#popup__toggle{bottom:25px;right:10px;position:fixed;}
		.img-circle{background-color:#29AEE3;box-sizing:content-box;-webkit-box-sizing:content-box;}
		.circlephone{box-sizing:content-box;-webkit-box-sizing:content-box;border: 2px solid #29AEE3;width:150px;height:150px;bottom:-25px;right:10px;position:absolute;-webkit-border-radius:100%;-moz-border-radius: 100%;border-radius: 100%;opacity: .5;-webkit-animation: circle-anim 2.4s infinite ease-in-out !important;-moz-animation: circle-anim 2.4s infinite ease-in-out !important;-ms-animation: circle-anim 2.4s infinite ease-in-out !important;-o-animation: circle-anim 2.4s infinite ease-in-out !important;animation: circle-anim 2.4s infinite ease-in-out !important;-webkit-transition: all .5s;-moz-transition: all .5s;-o-transition: all .5s;transition: all 0.5s;}
		.circle-fill{box-sizing:content-box;-webkit-box-sizing:content-box;background-color:#29AEE3;width:100px;height:100px;bottom:0px;right:35px;position:absolute;-webkit-border-radius: 100%;-moz-border-radius: 100%;border-radius: 100%;border: 2px solid transparent;-webkit-animation: circle-fill-anim 2.3s infinite ease-in-out;-moz-animation: circle-fill-anim 2.3s infinite ease-in-out;-ms-animation: circle-fill-anim 2.3s infinite ease-in-out;-o-animation: circle-fill-anim 2.3s infinite ease-in-out;animation: circle-fill-anim 2.3s infinite ease-in-out;-webkit-transition: all .5s;-moz-transition: all .5s;-o-transition: all .5s;transition: all 0.5s;}
		.img-circle{box-sizing:content-box;-webkit-box-sizing:content-box;width:72px;height:72px;bottom: 14px;right: 49px;position:absolute;-webkit-border-radius: 100%;-moz-border-radius: 100%;border-radius: 100%;border: 2px solid transparent;opacity: .7;}
		.img-circleblock{box-sizing:content-box;-webkit-box-sizing:content-box;width:72px;height:72px;background-image:url(/-flashing-callback/mini.png);background-position: center center;background-repeat:no-repeat;animation-name: tossing;-webkit-animation-name: tossing;animation-duration: 1.5s;-webkit-animation-duration: 1.5s;animation-iteration-count: infinite;-webkit-animation-iteration-count: infinite;}
		.img-circle:hover{opacity: 1;}
		@keyframes pulse {0% {transform: scale(0.9);opacity: 1;}
		  50% {transform: scale(1); opacity: 1; }   
		  100% {transform: scale(0.9);opacity: 1;}}
		 @-webkit-keyframes pulse {0% {-webkit-transform: scale(0.95);opacity: 1;}
		  50% {-webkit-transform: scale(1);opacity: 1;}   
		  100% {-webkit-transform: scale(0.95);opacity: 1;}}
		@keyframes tossing {
		  0% {transform: rotate(-8deg);}
		  50% {transform: rotate(8deg);}
		  100% {transform: rotate(-8deg);}}
		@-webkit-keyframes tossing {
		  0% {-webkit-transform: rotate(-8deg);}
		  50% {-webkit-transform: rotate(8deg);}
		  100% {-webkit-transform: rotate(-8deg);}}
		@-moz-keyframes circle-anim {
		  0% {-moz-transform: rotate(0deg) scale(0.5) skew(1deg);opacity: .1;-moz-opacity: .1;-webkit-opacity: .1;-o-opacity: .1;}
		  30% {-moz-transform: rotate(0deg) scale(0.7) skew(1deg);opacity: .5;-moz-opacity: .5;-webkit-opacity: .5;-o-opacity: .5;}
		  100% {-moz-transform: rotate(0deg) scale(1) skew(1deg);opacity: .6;-moz-opacity: .6;-webkit-opacity: .6;-o-opacity: .1;}}
		@-webkit-keyframes circle-anim {
		  0% {-webkit-transform: rotate(0deg) scale(0.5) skew(1deg);-webkit-opacity: .1;}
		  30% {-webkit-transform: rotate(0deg) scale(0.7) skew(1deg);-webkit-opacity: .5;}
		  100% {-webkit-transform: rotate(0deg) scale(1) skew(1deg);-webkit-opacity: .1;}}
		@-o-keyframes circle-anim {
		  0% {-o-transform: rotate(0deg) kscale(0.5) skew(1deg);-o-opacity: .1;}
		  30% {-o-transform: rotate(0deg) scale(0.7) skew(1deg);-o-opacity: .5;}
		  100% {-o-transform: rotate(0deg) scale(1) skew(1deg);-o-opacity: .1;}}
		@keyframes circle-anim {
		  0% {transform: rotate(0deg) scale(0.5) skew(1deg);opacity: .1;}
		  30% {transform: rotate(0deg) scale(0.7) skew(1deg);opacity: .5;}
		  100% {transform: rotate(0deg) scale(1) skew(1deg);
		opacity: .1;}}
		@-moz-keyframes circle-fill-anim {
		  0% {-moz-transform: rotate(0deg) scale(0.7) skew(1deg);opacity: .2;}
		  50% {-moz-transform: rotate(0deg) -moz-scale(1) skew(1deg);opacity: .2;}
		  100% {-moz-transform: rotate(0deg) scale(0.7) skew(1deg);opacity: .2;}}
		@-webkit-keyframes circle-fill-anim {
		  0% {-webkit-transform: rotate(0deg) scale(0.7) skew(1deg);opacity: .2;  }
		  50% {-webkit-transform: rotate(0deg) scale(1) skew(1deg);opacity: .2;  }
		  100% {-webkit-transform: rotate(0deg) scale(0.7) skew(1deg);opacity: .2;}}
		@-o-keyframes circle-fill-anim {
		  0% {-o-transform: rotate(0deg) scale(0.7) skew(1deg);opacity: .2;}
		  50% {-o-transform: rotate(0deg) scale(1) skew(1deg);opacity: .2;}
		  100% {-o-transform: rotate(0deg) scale(0.7) skew(1deg);opacity: .2;}}
		@keyframes circle-fill-anim {
		  0% {transform: rotate(0deg) scale(0.7) skew(1deg);opacity: .2;}
		  50% {transform: rotate(0deg) scale(1) skew(1deg);opacity: .2;}
		  100% {transform: rotate(0deg) scale(0.7) skew(1deg);opacity: .2;}}
	</style>
	<a class="showContacts" href="#" id="popup__toggle" onclick="return false;">
		<div class="circlephone" style="transform-origin: center;"></div>
		<div class="circle-fill" style="transform-origin: center;"></div>
		<div class="img-circle" style="transform-origin: center;">
			<div class="img-circleblock" style="transform-origin: center;"></div>
		</div>
	</a>
</div>