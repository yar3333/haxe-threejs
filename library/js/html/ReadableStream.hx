package js.html;

import js.lib.Promise;

/**
 * This Streams API interface represents a readable stream of byte data. The Fetch API offers a concrete instance of a ReadableStream through the body property of a Response object.
 *
 * [MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStream)
 */
@:native("ReadableStream")
extern class ReadableStream<R = Dynamic>
{
    /** [MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStream/locked) */
    var locked(default, null) : Bool;


    //function new(underlyingSource: UnderlyingByteSource, strategy?: { highWaterMark?: number }): ReadableStream<Uint8Array>;
    //function new(underlyingSource: UnderlyingDefaultSource<R>, strategy?: QueuingStrategy<R>): ReadableStream<R>;
    function new(?underlyingSource: UnderlyingSource<R>, ?strategy: QueuingStrategy<R>): Void;
    
    /** [MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStream/cancel) */
    function cancel(?reason:Dynamic): Promise<Void>;
    
    /** [MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStream/getReader) */
    //function getReader(options: { mode: "byob" }): ReadableStreamBYOBReader;
    //function getReader(): ReadableStreamDefaultReader<R>;
    function getReader(?options:ReadableStreamGetReaderOptions): ReadableStreamReader<R>;
    
    /** [MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStream/pipeThrough) */
    function pipeThrough<T>(transform: ReadableWritablePair<T, R>, ?options:StreamPipeOptions): ReadableStream<T>;
    
    /** [MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStream/pipeTo) */
    function pipeTo(destination: WritableStream<R>, ?options:StreamPipeOptions): Promise<Void>;
    
    /** [MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStream/tee) */
    function tee(): Array<ReadableStream<R>>;
}