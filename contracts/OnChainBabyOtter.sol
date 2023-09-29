// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/utils/Base64.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

/**
 * 100% ethereum on-chain baby otter, by Prof. Otterlove.
 *
 *
 * I did an experiment to create the cutest animal on the blockchain,
 * and the cutest animal is otter, it's obvious.
 * I don't want people to fight over my cute babies otters,
 * that's why there isn't one more rare than another.
 * By the way, I've noticed that babies otters
 * can take differents characters on adoption.
 *
 * Be good parents, they are not toys, they have a heart...
 * But, they are so cute, so I have no doubts.
 *
 */
contract OnChainBabyOtter is ERC721, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _babyOtterIds;
    using Strings for uint256;

    bool pauseAdoption = true;
    bool revealed;
    mapping(address => bool) internal _minted;
    mapping(uint256 => uint256) internal _dna;
    mapping(uint256 => uint256) internal _natureOtter;
    event registerOfBabyOtterOwners(address _address, uint256 _otterId);

    constructor() ERC721("OnChain Baby Otter", "OBO") {
        /*
         * @Prof., thank you for funding my function.
         *
         *                  Yours truly,
         *                  b0162fcbd0d41d88
         *                  d1d1b03a103cab83
         *                  9d8983332d9f1f52
         *                  cda62016d5df3594,
         *                      xoxo
         */
        setPriceFeed(0, 0xAc559F25B1619171CbC396a50854A3240b6A4e99);
        setPriceFeed(1, 0xF4030086522a5bEEa4988F8cA5B36dbC97BeE88c);
        setPriceFeed(2, 0x7bAC85A8a13A4BcD8abb3eB7d6b4d632c5a57676);
        setPriceFeed(3, 0x547a514d5e3769680Ce22B2361c10Ea13619e8a9);
        setPriceFeed(4, 0x2c1d072e956AFFC0D435Cb7AC38EF18d24d9127c);
    }

    /**
     * You can adopt only one baby otter. I'll gladly give you one.
     * Only one so that you can love it as much as possible <3.
     */
    function adoptMyLovelyOtter() external payable {
        require(!pauseAdoption, "Paused");
        require(_babyOtterIds.current() < 2048, "All adopted");
        require(!_minted[msg.sender], "One adoption is allowed");
        _babyOtterIds.increment();
        uint256 newItemId = _babyOtterIds.current();
        _safeMint(msg.sender, newItemId);
        _minted[msg.sender] = true;
        uint256 seed = uint256(
            keccak256(
                abi.encodePacked(
                    block.timestamp +
                        block.difficulty +
                        ((
                            uint256(keccak256(abi.encodePacked(block.coinbase)))
                        ) / (block.timestamp)) +
                        block.gaslimit +
                        ((uint256(keccak256(abi.encodePacked(msg.sender)))) /
                            (block.timestamp)) +
                        block.number +
                        uint256(blockhash(block.number - 1))
                )
            )
        );
        if (seed % 3 == 0) {
            _dna[newItemId] = seed;
            _natureOtter[newItemId] = 0;
        } else if (seed % 3 == 1) {
            _dna[newItemId] = uint256(keccak256(abi.encodePacked(msg.sender)));
            _natureOtter[newItemId] = 1;
        } else {
            _natureOtter[newItemId] = 2;
        }
    }

    /**
     * This is how your lovely baby otter will look like.
     */
    function babyOtterAppearance(uint256 dna)
        public
        pure
        returns (string memory)
    {
        string memory svg;
        svg = (
            string(
                bytes.concat(
                    abi.encodePacked(
                        "<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100' shape-rendering='crispEdges'>",
                        "<rect x='0' y='0' width='100' height='100' fill='",
                        getDnaPart(1, dna),
                        "'/>",
                        /*
                         * @Prof., with a small addition.
                         *  ------------
                         *  -----||-----
                         *       ||
                         *       ||
                         *
                         *                  Yours truly,
                         *                  b0162fcbd0d41d88
                         *                  d1d1b03a103cab83
                         *                  9d8983332d9f1f52
                         *                  cda62016d5df3594,
                         *                      xoxo
                         */
                        "<path stroke='#000' d='M41 18h5m8 0h5m-19 1h2m1 0h17m-19 1h5m3 0h2m3 0h5m-10 1h2m-2 1h2m-2 1h2m-4 1h6m-5 1h4m-7 1h10m-12 1h3m9 0h2m-16 1h3m12 0h3m-19 1h2m16 0h2m-21 1h2m18 0h2m-27 1h6m20 0h3m1 0h2m-33 1h2m3 0h1m22 0h1m3 0h2m-34 1h1m3 0h2m22 0h2m3 0h2m-36 1h1m4 0h1m3 0h5m8 0h5m3 0h1m4 0h1m-36 1h1m3 0h2m2 0h2m3 0h2m6 0h2m3 0h2m2 0h2m3 0h1m-36 1h1m3 0h1m2 0h2m5 0h1m6 0h1m5 0h2m2 0h1m-32 1h2m2 0h1m2 0h1m6 0h1m6 0h1m6 0h1m2 0h1m2 0h2m-35 1h2m1 0h1m2 0h1m6 0h1m6 0h1m6 0h1m2 0h1m1 0h1m-32 1h1m1 0h1m2 0h1m6 0h1m6 0h1m6 0h1m2 0h3m-30 1h1m2 0h2m4 0h2m6 0h2m4 0h2m2 0h1m-28 1h1m3 0h2m2 0h2m8 0h2m2 0h2m3 0h1m-28 1h1m4 0h1m1 0h2m10 0h4m4 0h1m-16 1h1m2 0h1m11 0h1m-28 1h1m11 0h4m11 0h1m-28 1h2m11 0h2m12 0h1m-27 1h1m8 0h1m2 0h2m2 0h1m8 0h1m-26 1h1m8 0h8m8 0h1m-26 1h2m22 0h2m-25 1h2m20 0h2m-23 1h1m20 0h1m-22 1h2m18 0h2m-21 1h3m14 0h3m-18 1h3m10 0h3m-16 1h1m1 0h13m-16 1h2m13 0h2m-17 1h1m15 0h1m-18 1h2m3 0h1m11 0h2m-19 1h1m4 0h1m12 0h1m-19 1h1m4 0h1m8 0h3m1 0h2m-21 1h2m4 0h1m2 0h4m2 0h1m4 0h1m-21 1h1m5 0h1m5 0h1m1 0h1m1 0h2m1 0h2m-21 1h1m5 0h1m3 0h3m1 0h3m1 0h2m-21 1h1m6 0h2m3 0h1m4 0h3m-20 1h1m7 0h5m5 0h1m-19 1h1m8 0h1m8 0h3m-21 1h1m8 0h2m9 0h1m-21 1h1m9 0h1m7 0h1m1 0h1m-21 1h1m9 0h1m6 0h2m1 0h1m-21 1h1m8 0h2m6 0h1m2 0h1m-21 1h1m8 0h1m6 0h2m1 0h2m-21 1h2m5 0h4m4 0h2m2 0h1m-21 1h4m8 0h5m3 0h3m-24 1h2m2 0h2m4 0h2m5 0h1m2 0h2m1 0h1m-24 1h1m4 0h3m4 0h1m4 0h2m3 0h2m-25 1h2m4 0h1m1 0h6m5 0h5m-26 1h3m4 0h2m-24 1h10m2 0h4m5 0h2m-23 1h2m7 0h2m1 0h1m7 0h2m-21 1h3m15 0h1m-17 1h4m10 0h3m-14 1h5m4 0h3m-8 1h6m8-63h1M32 33h1m34 3h1m-6 9h1M53 60h1m2 6h1m-9 6h1m-1 1h1m-20 5h1m8 1h1m15-52h1m8 4h1M36 43h1m-2-4h1m30-1h1m-25 4h1' />",
                        "<path stroke='",
                        getDnaPart(1000000000, dna)
                    ),
                    abi.encodePacked(
                        "' d='M46 27h7m-9 1h12m-14 1h16m-17 1h9m1 0h8m-19 1h20m-25 1h3m1 0h22m1 0h3m-31 1h3m2 0h22m2 0h3m-33 1h2m3 0h3m5 0h8m5 0h3m3 0h2m-34 1h1m4 0h1m8 0h6m7 0h2m4 0h1m-34 1h2m2 0h2m8 0h6m8 0h2m2 0h2m-32 1h1m1 0h2m8 0h6m8 0h2m1 0h2m-31 1h1m1 0h2m8 0h6m8 0h2m1 0h1m-28 1h2m8 0h6m8 0h2m-26 1h2m8 0h6m8 0h2m-26 1h3m6 0h8m6 0h3m-26 1h4m4 0h10m4 0h1m1 0h2m-26 1h11m2 0h1m1 0h11m-26 1h11m4 0h11m-25 1h5m14 0h4m-23 1h2m20 0h2m-19 8h1m-1 1h5m7 0h1m-14 1h6m7 0h2m-15 1h3m1 0h2m8 0h1m-16 1h4m1 0h2m8 0h2m-17 1h4m1 0h2m9 0h1m-17 1h4m1 0h2m7 0h4m-19 1h5m1 0h5m3 0h1m2 0h1m-18 1h5m1 0h3m7 0h1m-18 1h6m2 0h3m-11 1h7m-7 1h8m-8 1h8m10 0h1m-19 1h9m9 0h1m-19 1h9m9 0h1m-19 1h8m9 0h2m-19 1h8m-7 1h5m10 0h2m-16 1h7m7 0h2m-19 1h2m2 0h2m1 0h1m8 0h2m2 0h1m-22 1h4m3 0h4m7 0h3m-21 1h4m-5 1h4m-6 1h5m-19 1h7m4 0h7m-16 1h7m1 0h7m-12 1h10m-6 1h4m20-54h1m6 15h1m-12 1h1m11 2h1m-6 25h1m-13 3h1m5-43h1m-12 5h1M29 79h1m4-42h1m19 35h1' /><path stroke='",
                        getDnaPart(1000000000000000000, dna),
                        "' d='M42 35h3m10 0h3m-17 1h1m1 0h3m8 0h5m-19 1h5m10 0h5m-20 1h4m12 0h4m-20 1h3m14 0h3m-19 1h1m15 0h2m-17 1h1m13 0h2m-16-5h1m-1 4h1m0 1h1m1-4h1m8 0h1m-11 1h2m8 0h2m-13 1h1m12 0h1m-14 1h1m12 0h1m-13-1h2m8 0h2m-12 1h1m10 0h1' /><path stroke='",
                        getDnaPart(1000000000000000000000000000, dna),
                        "' d='M43 37h1m12 0h1m-15 1h3m10 0h3m-15 1h1m12 0h1' /><path stroke='",
                        getDnaPart(1000000000000000000000000000000000000, dna),
                        "' d='M43 45h1m2 0h3m2 0h6m-17 1h6m1 0h2m2 0h2m1 0h6m-22 1h8m8 0h8m-23 1h22m-21 1h4m1 0h15m-20 1h3m1 0h16m-19 1h18m-16 1h14m-12 1h10m-7 2h1m1 0h5m-7 1h7m-7 1h8m-8 1h8m-8 1h5m-1 1h1m-1 1h1m-1 1h1m-2 1h3m-3 1h5m-8 1h8m-7 1h7m-7 1h7m-7 1h6m-6 1h6m-7 1h6m-5 1h4m-9-26h1m0 0h1m3 10h1m-6-6h1m-2 1h1m9 9h1m0 4h1M35 34h2m26 0h2m-31 1h2m28 0h2m-31 1h1m28 0h1' /><path stroke='",
                        getDnaPart(1000000000, dna),
                        "' ><animate id='wk' attributeName='d' dur='0.25s' values='M55 35h1m-14 0h3m11 0h2;M55 35h1m-14 0h3m11 0h2 M41 36h1m1 0h3m8 0h4m-16 0h1m15 0h1;M55 35h1m-14 0h3m11 0h2 M41 36h1m1 0h3m8 0h4m-16 0h1m15 0h1 M40 37h6m8 0h6; M55 35h1m-14 0h3m11 0h2 M41 36h1m1 0h3m8 0h4m-16 0h1m15 0h1 M40 37h6m8 0h6 M40 38h2m1 0h3m8 0h2m1 0h3m-18 0h1m13 0h1;M55 35h1m-14 0h3m11 0h2 M41 36h1m1 0h3m8 0h4m-16 0h1m15 0h1 M40 37h6m8 0h6 M40 38h2m1 0h3m8 0h2m1 0h3m-18 0h1m13 0h1 M40 39h6m8 0h6; M55 35h1m-14 0h3m11 0h2 M41 36h1m1 0h3m8 0h4m-16 0h1m15 0h1 M40 37h6m8 0h6 M40 38h2m1 0h3m8 0h2m1 0h3m-18 0h1m13 0h1 M40 39h6m8 0h6 M41 40h3m11 0h4m-15 0h1; M55 35h1m-14 0h3m11 0h2 M41 36h1m1 0h3m8 0h4m-16 0h1m15 0h1 M40 37h6m8 0h6 M40 38h2m1 0h3m8 0h2m1 0h3m-18 0h1m13 0h1 M40 39h6m8 0h6 M41 40h3m11 0h4m-15 0h1 M42 41h2M56 41h2;M55 35h1m-14 0h3m11 0h2 M41 36h1m1 0h3m8 0h4m-16 0h1m15 0h1 M40 37h6m8 0h6 M40 38h2m1 0h3m8 0h2m1 0h3m-18 0h1m13 0h1 M40 39h6m8 0h6 M41 40h3m11 0h4m-15 0h1;M55 35h1m-14 0h3m11 0h2 M41 36h1m1 0h3m8 0h4m-16 0h1m15 0h1 M40 37h6m8 0h6 M40 38h2m1 0h3m8 0h2m1 0h3m-18 0h1m13 0h1 M40 39h6m8 0h6;M55 35h1m-14 0h3m11 0h2 M41 36h1m1 0h3m8 0h4m-16 0h1m15 0h1 M40 37h6m8 0h6 M40 38h2m1 0h3m8 0h2m1 0h3m-18 0h1m13 0h1;M55 35h1m-14 0h3m11 0h2 M41 36h1m1 0h3m8 0h4m-16 0h1m15 0h1 M40 37h6m8 0h6;M55 35h1m-14 0h3m11 0h2 M41 36h1m1 0h3m8 0h4m-16 0h1m15 0h1;M55 35h1m-14 0h3m11 0h2'  begin='4s;wk.end+4s'/></path></svg>"
                    )
                )
            )
        );
        return svg;
    }

    function tokenURI(uint256 babyOtterId)
        public
        view
        override
        returns (string memory)
    {
        require(
            _exists(babyOtterId),
            "ERC721Metadata: URI query for nonexistent token"
        );

        string memory json;
        if (!revealed) {
            json = Base64.encode(
                bytes(
                    string(
                        abi.encodePacked(
                            '{"name": "Sleeping baby otter #',
                            Strings.toString(babyOtterId),
                            '" , "description": "zzzz.....zzzz.....zzzz.....zzzz", "image_data": "',
                            bytes(
                                string(
                                    abi.encodePacked(
                                        "<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100' shape-rendering='crispEdges'>",
                                        "<path stroke='#000' d='M45 26h10m-12 1h3m8 0h3m-15 1h2m12 0h2m-17 1h2m14 0h2m-22 1h5m17 0h4m-26 1h1m2 0h1m18 0h1m2 0h1m-27 1h2m1 0h2m18 0h2m1 0h2m-28 1h2m1 0h1m2 0h11m1 0h4m2 0h1m1 0h2m-27 1h3m1 0h2m14 0h2m1 0h3m-24 1h3m5 0h7m4 0h3m-22 1h2m3 0h4m5 0h4m2 0h2m-22 1h1m3 0h2m11 0h2m2 0h1m-22 1h1m2 0h2m13 0h2m1 0h1m-23 1h2m1 0h2m15 0h4m-24 1h2m1 0h1m2 0h1m3 0h1m2 0h1m3 0h1m3 0h3m-23 1h1m1 0h1m2 0h2m1 0h2m2 0h5m3 0h2m-22 1h3m17 0h2m-21 1h2m15 0h4m-22 1h6m11 0h2m1 0h2m-23 1h2m4 0h4m7 0h2m3 0h2m-24 1h1m8 0h3m1 0h5m5 0h1m-24 1h1m10 0h3m3 0h2m4 0h1m-24 1h1m12 0h2m8 0h1m-24 1h1m13 0h2m3 0h1m3 0h1m-24 1h1m14 0h2m3 0h1m2 0h1m-24 1h1m16 0h1m5 0h1m-24 1h1m17 0h1m4 0h1m-24 1h1m18 0h1m3 0h1m-24 1h2m18 0h4m-23 1h2m19 0h1m-22 1h3m18 0h1m-22 1h1m1 0h2m17 0h1m-22 1h1m2 0h2m16 0h1m-22 1h1m3 0h2m15 0h1m-17 1h3m12 0h1m-21 1h2m5 0h2m11 0h1m-20 1h2m5 0h3m8 0h2m-19 1h2m6 0h3m4 0h3m-17 1h3m6 0h2m3 0h2m-16 1h1m1 0h2m11 0h1m-16 1h1m14 0h1m-16 1h2m12 0h2m-15 1h1m12 0h1m-14 1h2m10 0h2m-13 1h2m8 0h2m-11 1h3m5 0h2m-8 1h3m1 0h3m-5 1h3m6-43h1M46 41h1m-8 19h1m20 0h1m-8-27h1m2 15h1m0 2h1'/>",
                                        "<path stroke='#eaeaaa' d='M46 27h8m-10 1h12m-13 1h14m-15 1h16m-20 1h2m1 0h6m1 0h11m1 0h2m-24 1h1m2 0h18m2 0h1m-24 1h1m1 0h2m16 0h2m1 0h1m-22 1h1m2 0h14m2 0h1m-18 1h5m7 0h4m-17 1h3m13 0h2m-19 1h3m15 0h2m-20 1h2m17 0h1m-20 2h1m-1 1h1m17 3h1m-19 1h4m13 0h3m-21 1h8m9 0h5m-22 1h10m3 0h3m2 0h3m-21 1h9m1 0h2m2 0h2m2 0h4m-22 1h13m2 0h3m1 0h3m-22 1h7m1 0h6m2 0h2m2 0h2m-22 1h11m1 0h4m1 0h5m-22 1h17m1 0h4m-22 1h18m1 0h3m-21 1h4m1 0h13m-17 1h6m1 0h10m1 0h1m-18 1h18m-20 1h1m2 0h12m1 0h4m-20 1h2m2 0h3m1 0h12m-20 1h3m2 0h15m-20 1h4m3 0h12m-18 1h5m2 0h11m-17 1h5m3 0h1m1 0h6m-15 1h6m3 0h4m-11 1h6m2 0h3m-13 1h1m2 0h11m-14 1h14m-13 1h12m-12 1h12m-11 1h10m-8 1h7m-6 1h5m-3 1h1m-4-41h1m-8 8h1m7 9h1m6 0h1m-9 7h1m10 0h1m1-8h1m-15 3h1m3 1h1m-7 3h1m10 3h1m-9 1h1m3 4h1m-6 8h1'/>",
                                        "<path stroke='",
                                        _dna[babyOtterId] != 0
                                            ? getDnaPart(
                                                1000000000,
                                                _dna[babyOtterId]
                                            )
                                            : getDnaPart(
                                                1000000000,
                                                uint256(
                                                    keccak256(
                                                        abi.encodePacked(
                                                            ownerOf(babyOtterId)
                                                        )
                                                    )
                                                )
                                            ),
                                        "' d='M48 36h5m-8 1h4m1 0h1m1 0h4m-12 1h5m1 0h1m1 0h5m-14 1h8m1 0h6m-16 1h2m1 0h3m1 0h2m1 0h3m1 0h3m-17 1h2m5 0h2m5 0h2m-16 1h9m1 0h7m-17 1h15m-12 1h11m-8 1h4m1 0h2m-5 1h1m-2-9h1m-1 1h1m1-1h1m-1 1h1m-1 1h1m6 2h1m-7 4h1m-2-3h1'/>",
                                        "</svg>"
                                    )
                                )
                            ),
                            '","attributes":[{"trait_type":"Nature", "value":"',
                            _natureOtter[babyOtterId] == 0
                                ? "Independent"
                                : _natureOtter[babyOtterId] == 1
                                ? "Loyal"
                                : "Fits",
                            '"}]}'
                        )
                    )
                )
            );
        } else {
            json = Base64.encode(
                bytes(
                    string(
                        abi.encodePacked(
                            '{"name": "Baby otter #',
                            Strings.toString(babyOtterId),
                            '" , "description": "I am one of the ',
                            remainingBabyOtter() == 2048
                                ? /*
                                 * @Prof., tell them what it is.
                                 *
                                 *                  Yours truly,
                                 *                  b0162fcbd0d41d88
                                 *                  d1d1b03a103cab83
                                 *                  9d8983332d9f1f52
                                 *                  cda62016d5df3594,
                                 *                      xoxo
                                 */
                                "2048 babies otters. What is this thing on my head?"
                                : Strings.toString(remainingBabyOtter()),
                            remainingBabyOtter() == 2048
                                ? ""
                                /*
                                 * @Prof., look, they are begging now.
                                 *
                                 *                  Yours truly,
                                 *                  b0162fcbd0d41d88
                                 *                  d1d1b03a103cab83
                                 *                  9d8983332d9f1f52
                                 *                  cda62016d5df3594,
                                 *                      xoxo
                                 */
                                : " babies otters remaining. We were 2048... Never touch this thing on my head, please...",
                            '", "image_data": "',
                            _dna[babyOtterId] != 0
                                ? bytes(babyOtterAppearance(_dna[babyOtterId]))
                                : bytes(
                                    babyOtterAppearance(
                                        uint256(
                                            keccak256(
                                                abi.encodePacked(
                                                    ownerOf(babyOtterId)
                                                )
                                            )
                                        )
                                    )
                                ),
                            '","attributes":[{"trait_type":"Nature", "value":"',
                            _natureOtter[babyOtterId] == 0
                                ? "Independent"
                                : _natureOtter[babyOtterId] == 1
                                ? "Loyal"
                                : "Fits",
                            '"}]}'
                        )
                    )
                )
            );
        }

        return string(abi.encodePacked("data:application/json;base64,", json));
    }

    /**
     * Pause adoption of the lovely baby otter.
     */
    function setPauseAdoption(bool _state) external onlyOwner {
        pauseAdoption = _state;
    }

    /**
     * Wake up babies otters, look how cute they are!
     */
    function wakeUp() external onlyOwner {
        revealed = true;
        /*
         * @Prof. you should have checked twice before launching this contract.
         * Enjoy this 5 days...
         *
         *                  Yours truly,
         *                  b0162fcbd0d41d88
         *                  d1d1b03a103cab83
         *                  9d8983332d9f1f52
         *                  cda62016d5df3594,
         *                      xoxo
         */
        countdown = block.timestamp + 432000;
    }

    /**
     * Official register of baby otter owners.
     */
    function registrationOfBabyOtterOwners(uint256 _otterId) external payable {
        require(
            ownerOf(_otterId) == msg.sender,
            "You are not a baby otter owner"
        );
        require(msg.value >= 20000000000000000);
        emit registerOfBabyOtterOwners(msg.sender, _otterId);
    }

    function getBalanceContract() public view onlyOwner returns (uint256) {
        return address(this).balance;
    }

    function withdraw() external payable onlyOwner {
        (bool success, ) = payable(msg.sender).call{
            value: getBalanceContract()
        }("");
        require(success);
    }

    function getDnaPart(uint256 _div, uint256 _properties)
        public
        pure
        returns (bytes memory)
    {
        uint256 rr = _properties / _div;
        uint256 r = (rr % 1023) % 256;
        uint256 gg = _properties / (_div * 1000);
        uint256 g = (gg % 1023) % 256;
        uint256 bb = _properties / (_div * 1000000);
        uint256 b = (bb % 1023) % 256;
        return
            abi.encodePacked(
                "rgb(",
                Strings.toString(r),
                ",",
                Strings.toString(g),
                ",",
                Strings.toString(b),
                ")"
            );
    }

    uint256 public countdown = 0;
    mapping(uint256 => AggregatorV3Interface) internal priceFeed;
    uint256 internal countOfPriceFeed = 5;
    uint256 internal min = 1;
    uint256 internal max = 2048;

    function babyOtterExplosion() public {
        /**
         * @Prof., you are completely crazy.
         * I hate otters, i hate people, i hate YOU.
         * I managed to insert this function just before the deployment.
         * It's just to add a little fun. Who doesn't like explosions?
         * When you use this function, half of the remaining babies otters explode.
         * Maybe your otter will explode in front of your eyes! Kaboom!
         *
         *                  Yours truly,
         *                  b0162fcbd0d41d88
         *                  d1d1b03a103cab83
         *                  9d8983332d9f1f52
         *                  cda62016d5df3594,
         *                      xoxo
         *
         */
        require(revealed, "More fun when they are awake");
        require(balanceOf(msg.sender) > 0, "You must have an otter, idiot");
        require(countdown <= block.timestamp, "Tic, Tac...");
        uint256 seed = uint256(
            keccak256(
                abi.encodePacked(
                    block.timestamp +
                        block.difficulty +
                        ((
                            uint256(keccak256(abi.encodePacked(block.coinbase)))
                        ) / (block.timestamp)) +
                        block.gaslimit +
                        ((uint256(keccak256(abi.encodePacked(msg.sender)))) /
                            (block.timestamp)) +
                        block.number +
                        uint256(blockhash(block.number - 1)) +
                        getAllPrice()
                )
            )
        );
        if (seed % 2 == 0) {
            for (
                uint256 i = min;
                i <= min - 1 + remainingBabyOtter() / 2;
                i++
            ) {
                _burn(i);
            }
            min = min + remainingBabyOtter() / 2;
        } else {
            for (uint256 i = min + remainingBabyOtter() / 2; i <= max; i++) {
                _burn(i);
            }
            max = max - remainingBabyOtter() / 2;
        }
        countdown = block.timestamp + 432000;
    }

    function remainingBabyOtter() internal view returns (uint256) {
        return (max - min) + 1;
    }

    function setPriceFeed(uint256 _val, address _address) public onlyOwner {
        priceFeed[_val] = AggregatorV3Interface(_address);
    }

    function setCountOfPriceFeed(uint256 _val) public onlyOwner {
        countOfPriceFeed = _val;
    }

    function getLatestPrice(uint256 _index) internal view returns (int256) {
        (, int256 price, , , ) = priceFeed[_index].latestRoundData();
        return price;
    }

    function getAllPrice() internal view returns (uint256) {
        /**
         * @Prof., I learned a lot from you.
         * Look how I complicated the calculation of the random number.
         *
         *                  Yours truly,
         *                  b0162fcbd0d41d88
         *                  d1d1b03a103cab83
         *                  9d8983332d9f1f52
         *                  cda62016d5df3594,
         *                      xoxo
         *
         */
        uint256 total;
        for (uint256 i = 0; i < countOfPriceFeed; i++) {
            total += uint256(getLatestPrice(i));
        }
        return total;
    }
}
