package org.osflash.signals.natives.sets {
	import org.osflash.signals.natives.NativeSignal;

	import flash.events.Event;
	import flash.events.TextEvent;
	import flash.text.TextField;

	/**
	 * @author Jon Adams
	 */
	public class TextFieldSignalSet extends InteractiveObjectSignalSet {

		public var change:NativeSignal;
		public var link:NativeSignal;
		public var scroll:NativeSignal;

		public function TextFieldSignalSet(target:TextField) {
			super(target);
			_signals.push(change = new NativeSignal(target, Event.CHANGE, Event));
		}
	}
}