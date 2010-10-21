package org.osflash.signals.natives.sets {
	import flash.net.XMLSocket;
	import org.osflash.signals.natives.NativeSignal;

	import flash.display.DisplayObject;
	import flash.events.DataEvent;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;

	/**
	 * @author Jon Adams
	 */
	public class XMLSocketSignalSet extends EventDispatcherSignalSet {

		public var close:NativeSignal;
		public var connect:NativeSignal;
		public var data:NativeSignal;
		public var ioError:NativeSignal;
		public var securityError:NativeSignal;

		public function XMLSocketSignalSet(target:XMLSocket) {
			super(target);
			_signals.push(close = new NativeSignal(target, Event.CLOSE, Event));
		}
	}
}