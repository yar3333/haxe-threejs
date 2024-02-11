package js.html;

import js.lib.Promise;

/**
 * This Streams API interface provides a standard abstraction for writing streaming data to a destination, known as a sink. This object comes with built-in backpressure and queuing.
 *
 * [MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStream)
 */
@:native("WritableStream")
extern class WritableStream<W = Dynamic> 
{
    /** [MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStream/locked) */
    var locked(default, null) : Bool;

    function new(?underlyingSink:UnderlyingSink<W>, ?strategy:QueuingStrategy<W>): Void;

    /** [MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStream/abort) */
    function abort(?reason:Dynamic): Promise<Void>;
    /** [MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStream/close) */
    function close(): Promise<Void>;
    /** [MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStream/getWriter) */
    function getWriter(): WritableStreamDefaultWriter<W>;
}
