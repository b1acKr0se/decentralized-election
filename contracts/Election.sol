pragma solidity 0.5.0;


contract Election {
     struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    string private constant CANDIDATE_1 = "Donald Trump";
    string private constant CANDIDATE_2 = "Hillary Rodham Clinton";

    mapping (uint => Candidate) public candidates;
    uint public candidateCount;

    constructor() public {
        addCandidate(CANDIDATE_1);
        addCandidate(CANDIDATE_2);
    }

    function addCandidate(string memory _name) private {
        candidateCount++;
        candidates[candidateCount] = Candidate(candidateCount, _name, 0);
    }
}