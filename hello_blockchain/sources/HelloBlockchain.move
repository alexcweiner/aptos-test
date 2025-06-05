module hello_blockchain::hello_blockchain {
    use aptos_framework::event::{EventHandle, emit_event};
    use aptos_framework::aptos_account::{self};
    use std::string;

    struct MessageEvent has drop, store {
        message: string::String,
    }

    struct HelloWorld has key {
        event_handle: EventHandle<MessageEvent>,
    }

    public entry fun initialize(account: &signer) {
        let event_handle = aptos_framework::event::new_event_handle<MessageEvent>(account);
        move_to(account, HelloWorld { event_handle });
    }

    public entry fun emit_hello(account: &signer) {
        let hello_world = borrow_global_mut<HelloWorld>(signer::address_of(account));
        let msg = MessageEvent { message: string::utf8(b"Hello, Aptos!") };
        emit_event(&mut hello_world.event_handle, msg);
    }
}
