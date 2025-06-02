module voting_system::dashboard;

use std::string::String;

/// key is ability to access the proposal
public struct Proposal has key{
    id: UID,
    title: String,
    description: String,
    voted_yes_count: u64,
    voted_no_count: u64,
    expiration: u64,
    creator: address,
    voters: vector<address>,
}

public fun create_proposal(
    title:String,
    description:String,
    expiration:u64,
    ctx: &mut TxContext,
){
    let proposal = Proposal{
        id: object::new(ctx),
        title,
        description,
        voted_yes_count: 0,
        voted_no_count: 0,
        expiration,
        creator: ctx.sender(),
        voters: vector[],
    };

    transfer::share_object(proposal);
}