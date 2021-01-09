<?php

namespace App\Http\Controllers;

use App\Http\Requests\MessageRequest;
use App\Http\Resources\Message\MessageCollection;
use App\Http\Resources\Message\MessageResource;
use App\Models\Message;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class MessageController extends Controller
{
    public function index()
    {
        return MessageCollection::collection(Message::all());
    }


    public function store(MessageRequest $request)
    {
        $validated = $request->validated();

        $message = new Message();
        $message->sender_id = $validated['sender_id'];
        $message->receiver_id = $validated['receiver_id'];
        $message->images = $validated['images'];
        $message->text = $validated['text'];
        $message->save();

        return response()->json(['message' => $message], Response::HTTP_OK);
    }


    public function show(Message $message)
    {
        return new MessageResource($message);
    }


    public function update(MessageRequest $request, Message $message)
    {
        $validated = $request->validated();

        $message->sender_id = $validated['sender_id'];
        $message->receiver_id = $validated['receiver_id'];
        $message->images = $validated['images'];
        $message->text = $validated['text'];
        $message->save();

        return response()->json(['message' => $message], Response::HTTP_OK);

    }


    public function destroy(Message $message)
    {
        return response()->json(['message' => 'Not Allowed'], Response::HTTP_METHOD_NOT_ALLOWED);
    }
}
