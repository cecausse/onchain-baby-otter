<template>
  <MatchMedia query="(max-width: 760px)" v-slot="{ matches }">
    <section v-if="matches" id="lbo">
      <header class="container d-flex mb-3">
        <svg
          height="80"
          xmlns="http://www.w3.org/2000/svg"
          viewBox="0 -0.5 60 60"
          shape-rendering="crispEdges"
        >
          <path
            stroke="#000000"
            d="M21 13h5M35 13h5M20 14h21M21 15h4M29 15h3M35 15h3M39 15h1M29 16h1M31 16h1M29 17h3M29 18h3M27 19h4M32 19h2M28 20h3M32 20h1M27 21h2M30 21h6M23 22h3M35 22h2M21 23h3M37 23h1M39 23h1M20 24h2M39 24h1M19 25h2M40 25h2M14 26h6M41 26h6M13 27h2M18 27h1M42 27h1M46 27h2M13 28h1M17 28h2M42 28h2M47 28h2M12 29h1M17 29h1M21 29h1M23 29h3M35 29h4M43 29h1M48 29h1M12 30h1M16 30h2M20 30h2M25 30h2M34 30h2M39 30h2M43 30h2M48 30h1M12 31h1M16 31h1M19 31h2M26 31h1M34 31h1M40 31h2M44 31h1M48 31h1M12 32h2M16 32h1M19 32h1M26 32h1M34 32h1M41 32h1M47 32h2M13 33h2M16 33h1M19 33h1M26 33h1M34 33h1M44 33h1M46 33h1M14 34h1M16 34h1M34 34h1M41 34h1M44 34h3M16 35h1M19 35h2M25 35h2M34 35h2M40 35h2M44 35h1M16 36h1M21 36h1M24 36h2M35 36h2M39 36h2M44 36h1M16 37h1M21 37h4M36 37h3M44 37h1M16 38h1M28 38h1M32 38h1M44 38h1M16 39h1M29 39h4M44 39h1M16 40h2M29 40h3M44 40h1M17 41h1M26 41h1M29 41h3M34 41h1M43 41h1M17 42h1M26 42h9M43 42h1M17 43h2M43 43h1M18 44h2M41 44h2M19 45h1M41 45h1M19 46h2M40 46h2M20 47h3M38 47h3M22 48h3M36 48h3M24 49h13 M25 15h1M31 19h1M31 20h1M25 21h1M37 22h1M40 24h1M22 29h1M19 34h1M28 39h1M43 40h1 M38 15h1M26 21h1M29 21h1M38 23h1M44 32h1M41 33h1M47 33h1M26 34h1M20 36h1 M30 16h1M12 28h1M39 29h1M15 34h1M39 37h1M42 43h1"
          />
          <path
            stroke="#a79439"
            d="M26 22h1M28 22h7M24 23h8M33 23h4M22 24h7M30 24h9M21 25h15M37 25h3M20 26h21M15 27h3M19 27h20M40 27h2M43 27h1M45 27h1M14 28h2M19 28h23M44 28h3M13 29h2M18 29h3M26 29h9M40 29h3M46 29h2M13 30h1M18 30h2M27 30h2M30 30h4M41 30h2M47 30h1M13 31h2M17 31h2M27 31h7M42 31h2M46 31h2M14 32h2M17 32h2M27 32h7M42 32h2M45 32h2M15 33h1M17 33h2M27 33h1M29 33h5M42 33h2M45 33h1M17 34h2M27 34h7M42 34h2M17 35h2M27 35h7M17 36h3M26 36h1M28 36h7M41 36h3M17 37h4M25 37h3M29 37h7M40 37h4M17 38h9M27 38h1M29 38h3M33 38h11M17 39h11M33 39h1M35 39h6M42 39h2M19 40h4M38 40h3M42 40h1M18 41h2M41 41h2 M27 22h1M36 25h1M39 27h1M42 35h1M27 36h1M18 40h1 M32 23h1M29 24h1M44 27h1M29 30h1M26 38h1M41 39h1M41 40h1 M16 28h1M28 33h1M43 35h1M28 37h1M34 39h1"
          />
          <path
            stroke="#6b8de4"
            d="M15 29h2M44 29h1M14 30h2M45 30h2M15 31h1M45 31h1M23 40h6M32 40h6M20 41h1M22 41h4M27 41h2M32 41h2M35 41h6M18 42h2M21 42h5M35 42h1M37 42h6M19 43h23M20 44h15M36 44h5M20 45h9M30 45h11M21 46h19M23 47h15M25 48h11 M45 29h1M21 41h1M36 42h1 M20 42h1M35 44h1M29 45h1"
          />
          <path
            stroke="#f0fae0"
            d="M22 30h1M24 30h1M36 30h3M21 31h5M35 31h5M20 32h2M24 32h2M35 32h2M38 32h3M20 33h2M25 33h1M35 33h1M39 33h2M20 34h2M24 34h2M35 34h2M38 34h1M40 34h1M21 35h4M36 35h4M22 36h2M37 36h2 M23 30h1 M22 32h1M22 34h1 M39 34h1"
          />
          <path
            stroke="#ce0b50"
            d=" M38 33h1 M23 32h1M37 32h1M22 33h3M36 33h2M23 34h1M37 34h1"
          />
          <path stroke="#6b8de4">
            <animate
              id="wk"
              attributeName="d"
              dur="0.25s"
              values="M22 30h3 M36 30h3;M22 30h3 M36 30h3 M21 31h5 M35 31h5;M22 30h3 M36 30h3 M21 31h5 M35 31h5 M20 32h6 M35 32h6;M22 30h3 M36 30h3 M21 31h5 M35 31h5 M20 32h6 M35 32h6 M20 33h6M35 33h6;M22 30h3 M36 30h3 M21 31h5 M35 31h5 M20 32h6 M35 32h6 M20 33h6M35 33h6 M20 34h6 M35 34h6; M22 30h3 M36 30h3 M21 31h5 M35 31h5 M20 32h6 M35 32h6 M20 33h6M35 33h6 M20 34h6 M35 34h6 M21 35h4 M36 35h4; M22 30h3 M36 30h3 M21 31h5 M35 31h5 M20 32h6 M35 32h6 M20 33h6M35 33h6 M20 34h6 M35 34h6 M21 35h4 M36 35h4 M22 36h2M37 36h2;M22 30h3 M36 30h3 M21 31h5 M35 31h5 M20 32h6 M35 32h6 M20 33h6M35 33h6 M20 34h6 M35 34h6 M21 35h4 M36 35h4;M22 30h3 M36 30h3 M21 31h5 M35 31h5 M20 32h6 M35 32h6 M20 33h6M35 33h6 M20 34h6 M35 34h6;M22 30h3 M36 30h3 M21 31h5 M35 31h5 M20 32h6 M35 32h6 M20 33h6M35 33h6 M20 34h6 M35 34h6;M22 30h3 M36 30h3 M21 31h5 M35 31h5 M20 32h6 M35 32h6 M20 33h6M35 33h6;M22 30h3 M36 30h3 M21 31h5 M35 31h5 M20 32h6 M35 32h6;M22 30h3 M36 30h3 M21 31h5 M35 31h5;M22 30h3 M36 30h3"
              begin="4s;wk.end+4s"
            />
          </path>
        </svg>
        <div class="d-flex flex-column">
          <span class="title">{{ title }}</span>
          <span class="infos mt-2">Fully onchain Ethereum, cc0</span>
          <span class="infos">by Prof. Otterlove</span>
        </div>
      </header>
      <div class="container">
        <button
          v-if="$store.state.currentAccount == null"
          @click="getAccount"
          class="bn3637 bn37 m-auto"
        >
          CONNECT WALLET
        </button>
        <span class="normalSize m-auto" v-else>
          Connected to 0x...{{
            $store.state.currentAccount.substr(
              $store.state.currentAccount.length - 5
            )
          }}
        </span>
        <div id="main" class="d-flex flex-column justify-content-center mt-5">
          <div
            v-if="$store.state.currentAccount in $store.state.babyOtterLooking"
          >
            You have already minted!<br /><br />
            My baby otter #{{
              $store.state.babyOtterLooking[$store.state.currentAccount]
            }}
            <br />
            <a
              :href="
                'https://opensea.io/assets/ethereum/0xf4014b65e2228b2bc81d826f0c4f2c2f6841726b/' +
                $store.state.babyOtterLooking[$store.state.currentAccount]
              "
              >View it on Opensea.</a
            >
          </div>

          <a
            v-else-if="
              $store.state.currentAccount != null &&
              $store.state.adoptionState == 0 &&
              $store.state.network != 1
            "
            @click="switchNetwork"
            class="width-main-button align-self-center box"
          >
            <span>Wrong network, click to switch</span>
            <img class="width-main-button" src="../assets/adopt.png" />
          </a>
          <a
            v-else-if="
              $store.state.currentAccount != null &&
              $store.state.adoptionState == 0 &&
              2048 - $store.state.countAdoption != 0
            "
            @click="adoptOtter"
            class="width-main-button align-self-center box"
          >
            <span>Adopt my baby otter</span>
            <img class="width-main-button" src="../assets/adopt.png" />
          </a>
          <!--<span
            v-else-if="
              $store.state.currentAccount != null &&
              $store.state.adoptionState == 0 &&
              2048 - $store.state.countAdoption != 0
            "
            >Freemint will resume on June 10th, 6:30 pm (UTC)!<br /><br />Stay
            tuned on
            <a
              href="https://bit.ly/otterdisc"
              style="text-decoration: underline"
            >
              discord</a
            >
            or
            <a
              href="https://twitter.com/ochainbabyotter"
              style="text-decoration: underline"
              >twitter</a
            >.</span
          >-->
          <span v-else-if="$store.state.adoptionState == 1">
            Adoption in progress
            <br />
            <svg
              xmlns="http://www.w3.org/2000/svg"
              viewBox="0 -0.5 36 46"
              shape-rendering="crispEdges"
              width="36"
              height="46"
            >
              <path
                stroke="#000000"
                d="M0 0h3M4 0h3M8 0h6M15 0h7M23 0h1M26 0h10M0 1h11M12 1h4M17 1h6M24 1h12M0 2h2M34 2h2M0 3h2M34 3h2M0 4h2M34 4h2M0 5h2M34 5h2M0 6h2M5 6h11M17 6h13M35 6h1M0 7h2M5 7h4M10 7h5M16 7h3M20 7h7M29 7h1M34 7h2M0 8h2M34 8h2M0 9h2M34 9h2M1 10h1M6 10h11M18 10h4M23 10h4M29 10h1M35 10h1M0 11h1M5 11h3M9 11h15M26 11h4M34 11h1M0 12h2M34 12h1M0 13h2M34 13h1M0 14h2M5 14h3M9 14h4M14 14h7M22 14h8M34 14h1M0 15h2M5 15h3M9 15h10M20 15h10M34 15h2M1 16h1M34 16h2M0 17h2M34 17h2M0 18h2M5 18h3M9 18h12M22 18h3M27 18h3M35 18h1M0 19h2M5 19h9M15 19h3M19 19h1M21 19h1M23 19h2M27 19h1M29 19h1M34 19h2M0 20h2M34 20h2M0 21h2M34 21h2M0 22h2M34 22h1M0 23h2M34 23h2M0 24h2M34 24h2M0 25h2M34 25h2M0 26h2M34 26h2M0 27h2M35 27h1M0 28h2M34 28h2M0 29h2M34 29h1M0 30h2M34 30h2M0 31h2M34 31h2M0 32h2M35 32h1M0 33h1M34 33h2M0 34h2M34 34h2M0 35h1M34 35h2M0 36h2M34 36h2M0 37h2M34 37h2M0 38h2M34 38h2M0 39h2M34 39h2M0 40h2M34 40h2M0 41h2M35 41h1M0 42h2M34 42h2M0 43h2M34 43h1M0 44h8M9 44h6M16 44h2M19 44h4M24 44h8M33 44h1M0 45h2M3 45h3M7 45h17M25 45h11 M3 0h1M24 0h1M9 7h1M15 7h1M27 7h1M0 10h1M27 10h1M24 11h1M21 14h1M0 16h1M21 18h1M18 19h1M15 44h1M18 44h1M6 45h1M24 45h1 M7 0h1M22 0h1M25 0h1M16 1h1M16 6h1M34 6h1M19 7h1M28 7h1M22 10h1M28 10h1M34 10h1M1 11h1M25 11h1M13 14h1M19 15h1M25 18h1M34 18h1M22 19h1M25 19h1M28 19h1M34 27h1M34 32h1M1 33h1M1 35h1M34 41h1M34 44h1 M14 0h1M11 1h1M23 1h1M5 10h1M17 10h1M8 11h1M35 11h1M35 12h1M35 13h1M8 14h1M35 14h1M8 15h1M8 18h1M26 18h1M14 19h1M20 19h1M26 19h1M35 22h1M35 29h1M35 43h1M8 44h1M23 44h1M32 44h1M35 44h1M2 45h1"
              />
              <path stroke="#000000" d="M21 38h1">
                <animate
                  repeatCount="indefinite"
                  attributeName="d"
                  dur="0.5s"
                  values="M21 38h1 M21 39h1; M21 38h2 M21 39h2; M21 38h3 M21 39h3; M21 38h4 M21 39h4; M21 38h5 M21 39h5; M21 38h6 M21 39h6; M21 38h7 M21 39h7; M21 38h8 M21 39h8"
                />
              </path>
            </svg>
          </span>
          <span v-else-if="$store.state.adoptionState == 2">
            Congratulations, you are the proud parent of a baby otter.
            <br />Take care of it and love it
          </span>
          <span v-else-if="$store.state.adoptionState == 3"
            >Something went wrong, please refresh the page and try again</span
          >
          <span class="mt-5" v-if="2048 - $store.state.countAdoption == 0"
            >The 2048 baby otters have been adopted!</span
          >
          <span v-else-if="$store.state.currentAccount != null" class="mt-5">
            {{ 2048 - $store.state.countAdoption }} lovely baby otter
            <br />remaining for adoption.<br /><br /><br />
            For the full story 👇
            <button class="bn3637 bn37">
              <a
                class="linklinktree"
                href="https://wiki.prof-otterlove.com"
                target="_blank"
              >
                <span>Go to wiki</span>
              </a>
            </button>
          </span>

          <span v-else class="mt-5"
            >2048 babies otters!<br />Mint price: 0 ETH!<br />Mint is LIVE!<br /><br />shhh,
            they are sleeping right now.<br />
            <svg
              height="100"
              xmlns="http://www.w3.org/2000/svg"
              viewBox="25 20 50 70"
              shape-rendering="crispEdges"
            >
              <path
                stroke="#000"
                d="M45 26h10m-12 1h3m8 0h3m-15 1h2m12 0h2m-17 1h2m14 0h2m-22 1h5m17 0h4m-26 1h1m2 0h1m18 0h1m2 0h1m-27 1h2m1 0h2m18 0h2m1 0h2m-28 1h2m1 0h1m2 0h11m1 0h4m2 0h1m1 0h2m-27 1h3m1 0h2m14 0h2m1 0h3m-24 1h3m5 0h7m4 0h3m-22 1h2m3 0h4m5 0h4m2 0h2m-22 1h1m3 0h2m11 0h2m2 0h1m-22 1h1m2 0h2m13 0h2m1 0h1m-23 1h2m1 0h2m15 0h4m-24 1h2m1 0h1m2 0h1m3 0h1m2 0h1m3 0h1m3 0h3m-23 1h1m1 0h1m2 0h2m1 0h2m2 0h5m3 0h2m-22 1h3m17 0h2m-21 1h2m15 0h4m-22 1h6m11 0h2m1 0h2m-23 1h2m4 0h4m7 0h2m3 0h2m-24 1h1m8 0h3m1 0h5m5 0h1m-24 1h1m10 0h3m3 0h2m4 0h1m-24 1h1m12 0h2m8 0h1m-24 1h1m13 0h2m3 0h1m3 0h1m-24 1h1m14 0h2m3 0h1m2 0h1m-24 1h1m16 0h1m5 0h1m-24 1h1m17 0h1m4 0h1m-24 1h1m18 0h1m3 0h1m-24 1h2m18 0h4m-23 1h2m19 0h1m-22 1h3m18 0h1m-22 1h1m1 0h2m17 0h1m-22 1h1m2 0h2m16 0h1m-22 1h1m3 0h2m15 0h1m-17 1h3m12 0h1m-21 1h2m5 0h2m11 0h1m-20 1h2m5 0h3m8 0h2m-19 1h2m6 0h3m4 0h3m-17 1h3m6 0h2m3 0h2m-16 1h1m1 0h2m11 0h1m-16 1h1m14 0h1m-16 1h2m12 0h2m-15 1h1m12 0h1m-14 1h2m10 0h2m-13 1h2m8 0h2m-11 1h3m5 0h2m-8 1h3m1 0h3m-5 1h3m6-43h1M46 41h1m-8 19h1m20 0h1m-8-27h1m2 15h1m0 2h1"
              />
              <path
                stroke="#eaeaaa"
                d="M46 27h8m-10 1h12m-13 1h14m-15 1h16m-20 1h2m1 0h6m1 0h11m1 0h2m-24 1h1m2 0h18m2 0h1m-24 1h1m1 0h2m16 0h2m1 0h1m-22 1h1m2 0h14m2 0h1m-18 1h5m7 0h4m-17 1h3m13 0h2m-19 1h3m15 0h2m-20 1h2m17 0h1m-20 2h1m-1 1h1m17 3h1m-19 1h4m13 0h3m-21 1h8m9 0h5m-22 1h10m3 0h3m2 0h3m-21 1h9m1 0h2m2 0h2m2 0h4m-22 1h13m2 0h3m1 0h3m-22 1h7m1 0h6m2 0h2m2 0h2m-22 1h11m1 0h4m1 0h5m-22 1h17m1 0h4m-22 1h18m1 0h3m-21 1h4m1 0h13m-17 1h6m1 0h10m1 0h1m-18 1h18m-20 1h1m2 0h12m1 0h4m-20 1h2m2 0h3m1 0h12m-20 1h3m2 0h15m-20 1h4m3 0h12m-18 1h5m2 0h11m-17 1h5m3 0h1m1 0h6m-15 1h6m3 0h4m-11 1h6m2 0h3m-13 1h1m2 0h11m-14 1h14m-13 1h12m-12 1h12m-11 1h10m-8 1h7m-6 1h5m-3 1h1m-4-41h1m-8 8h1m7 9h1m6 0h1m-9 7h1m10 0h1m1-8h1m-15 3h1m3 1h1m-7 3h1m10 3h1m-9 1h1m3 4h1m-6 8h1"
              />
              <path
                stroke="rgb(251,170,249)"
                d="M48 36h5m-8 1h4m1 0h1m1 0h4m-12 1h5m1 0h1m1 0h5m-14 1h8m1 0h6m-16 1h2m1 0h3m1 0h2m1 0h3m1 0h3m-17 1h2m5 0h2m5 0h2m-16 1h9m1 0h7m-17 1h15m-12 1h11m-8 1h4m1 0h2m-5 1h1m-2-9h1m-1 1h1m1-1h1m-1 1h1m-1 1h1m6 2h1m-7 4h1m-2-3h1"
              /></svg
            ><br />Beware of the explosion! <br /><a
              style="text-decoration: underline"
              href="https://wiki.prof-otterlove.com/story/chapter-4-you-know-who"
              targer="_blank"
              ><img class="h100" src="../assets/explosion.gif" /></a
            ><br />
            <br />Connect to continue</span
          >
        </div>
      </div>
      <div class="footer d-flex justify-content-around align-items-end">
        <a
          v-if="$store.state.currentAccount != null"
          @click="showRegister"
          class="align-self-center fix-book-width"
        >
          <img
            v-if="$store.state.book == false"
            class="book"
            src="../assets/close.png"
          />
          <img
            v-if="$store.state.book == true"
            class="book"
            src="../assets/open.png"
          />
        </a>
        <a
          class="linklinktree fix-book-width"
          href="https://linktr.ee/prof_otterlove"
        >
          <img class="linktree" src="../assets/linktree.png" /><br />
          <span>links</span>
        </a>
      </div>
    </section>
    <section v-else id="lbo" class="m-auto">
      <div class="pt-4 d-flex justify-content-around">
        <div class="fix-width">
          <svg
            height="80"
            xmlns="http://www.w3.org/2000/svg"
            viewBox="0 -0.5 60 60"
            shape-rendering="crispEdges"
          >
            <path
              stroke="#000000"
              d="M21 13h5M35 13h5M20 14h21M21 15h4M29 15h3M35 15h3M39 15h1M29 16h1M31 16h1M29 17h3M29 18h3M27 19h4M32 19h2M28 20h3M32 20h1M27 21h2M30 21h6M23 22h3M35 22h2M21 23h3M37 23h1M39 23h1M20 24h2M39 24h1M19 25h2M40 25h2M14 26h6M41 26h6M13 27h2M18 27h1M42 27h1M46 27h2M13 28h1M17 28h2M42 28h2M47 28h2M12 29h1M17 29h1M21 29h1M23 29h3M35 29h4M43 29h1M48 29h1M12 30h1M16 30h2M20 30h2M25 30h2M34 30h2M39 30h2M43 30h2M48 30h1M12 31h1M16 31h1M19 31h2M26 31h1M34 31h1M40 31h2M44 31h1M48 31h1M12 32h2M16 32h1M19 32h1M26 32h1M34 32h1M41 32h1M47 32h2M13 33h2M16 33h1M19 33h1M26 33h1M34 33h1M44 33h1M46 33h1M14 34h1M16 34h1M34 34h1M41 34h1M44 34h3M16 35h1M19 35h2M25 35h2M34 35h2M40 35h2M44 35h1M16 36h1M21 36h1M24 36h2M35 36h2M39 36h2M44 36h1M16 37h1M21 37h4M36 37h3M44 37h1M16 38h1M28 38h1M32 38h1M44 38h1M16 39h1M29 39h4M44 39h1M16 40h2M29 40h3M44 40h1M17 41h1M26 41h1M29 41h3M34 41h1M43 41h1M17 42h1M26 42h9M43 42h1M17 43h2M43 43h1M18 44h2M41 44h2M19 45h1M41 45h1M19 46h2M40 46h2M20 47h3M38 47h3M22 48h3M36 48h3M24 49h13 M25 15h1M31 19h1M31 20h1M25 21h1M37 22h1M40 24h1M22 29h1M19 34h1M28 39h1M43 40h1 M38 15h1M26 21h1M29 21h1M38 23h1M44 32h1M41 33h1M47 33h1M26 34h1M20 36h1 M30 16h1M12 28h1M39 29h1M15 34h1M39 37h1M42 43h1"
            />
            <path
              stroke="#a79439"
              d="M26 22h1M28 22h7M24 23h8M33 23h4M22 24h7M30 24h9M21 25h15M37 25h3M20 26h21M15 27h3M19 27h20M40 27h2M43 27h1M45 27h1M14 28h2M19 28h23M44 28h3M13 29h2M18 29h3M26 29h9M40 29h3M46 29h2M13 30h1M18 30h2M27 30h2M30 30h4M41 30h2M47 30h1M13 31h2M17 31h2M27 31h7M42 31h2M46 31h2M14 32h2M17 32h2M27 32h7M42 32h2M45 32h2M15 33h1M17 33h2M27 33h1M29 33h5M42 33h2M45 33h1M17 34h2M27 34h7M42 34h2M17 35h2M27 35h7M17 36h3M26 36h1M28 36h7M41 36h3M17 37h4M25 37h3M29 37h7M40 37h4M17 38h9M27 38h1M29 38h3M33 38h11M17 39h11M33 39h1M35 39h6M42 39h2M19 40h4M38 40h3M42 40h1M18 41h2M41 41h2 M27 22h1M36 25h1M39 27h1M42 35h1M27 36h1M18 40h1 M32 23h1M29 24h1M44 27h1M29 30h1M26 38h1M41 39h1M41 40h1 M16 28h1M28 33h1M43 35h1M28 37h1M34 39h1"
            />
            <path
              stroke="#6b8de4"
              d="M15 29h2M44 29h1M14 30h2M45 30h2M15 31h1M45 31h1M23 40h6M32 40h6M20 41h1M22 41h4M27 41h2M32 41h2M35 41h6M18 42h2M21 42h5M35 42h1M37 42h6M19 43h23M20 44h15M36 44h5M20 45h9M30 45h11M21 46h19M23 47h15M25 48h11 M45 29h1M21 41h1M36 42h1 M20 42h1M35 44h1M29 45h1"
            />
            <path
              stroke="#f0fae0"
              d="M22 30h1M24 30h1M36 30h3M21 31h5M35 31h5M20 32h2M24 32h2M35 32h2M38 32h3M20 33h2M25 33h1M35 33h1M39 33h2M20 34h2M24 34h2M35 34h2M38 34h1M40 34h1M21 35h4M36 35h4M22 36h2M37 36h2 M23 30h1 M22 32h1M22 34h1 M39 34h1"
            />
            <path
              stroke="#ce0b50"
              d=" M38 33h1 M23 32h1M37 32h1M22 33h3M36 33h2M23 34h1M37 34h1"
            />
            <path stroke="#6b8de4">
              <animate
                id="wk"
                attributeName="d"
                dur="0.25s"
                values="M22 30h3 M36 30h3;M22 30h3 M36 30h3 M21 31h5 M35 31h5;M22 30h3 M36 30h3 M21 31h5 M35 31h5 M20 32h6 M35 32h6;M22 30h3 M36 30h3 M21 31h5 M35 31h5 M20 32h6 M35 32h6 M20 33h6M35 33h6;M22 30h3 M36 30h3 M21 31h5 M35 31h5 M20 32h6 M35 32h6 M20 33h6M35 33h6 M20 34h6 M35 34h6; M22 30h3 M36 30h3 M21 31h5 M35 31h5 M20 32h6 M35 32h6 M20 33h6M35 33h6 M20 34h6 M35 34h6 M21 35h4 M36 35h4; M22 30h3 M36 30h3 M21 31h5 M35 31h5 M20 32h6 M35 32h6 M20 33h6M35 33h6 M20 34h6 M35 34h6 M21 35h4 M36 35h4 M22 36h2M37 36h2;M22 30h3 M36 30h3 M21 31h5 M35 31h5 M20 32h6 M35 32h6 M20 33h6M35 33h6 M20 34h6 M35 34h6 M21 35h4 M36 35h4;M22 30h3 M36 30h3 M21 31h5 M35 31h5 M20 32h6 M35 32h6 M20 33h6M35 33h6 M20 34h6 M35 34h6;M22 30h3 M36 30h3 M21 31h5 M35 31h5 M20 32h6 M35 32h6 M20 33h6M35 33h6 M20 34h6 M35 34h6;M22 30h3 M36 30h3 M21 31h5 M35 31h5 M20 32h6 M35 32h6 M20 33h6M35 33h6;M22 30h3 M36 30h3 M21 31h5 M35 31h5 M20 32h6 M35 32h6;M22 30h3 M36 30h3 M21 31h5 M35 31h5;M22 30h3 M36 30h3"
                begin="4s;wk.end+4s"
              />
            </path>
          </svg>
        </div>
        <div class="d-flex flex-column">
          <span class="title">{{ title }}</span>
          <span class="infos mt-2">Fully onchain Ethereum, cc0</span>
          <span class="infos">by Prof. Otterlove</span>
        </div>
        <div class="fix-width">
          <button
            v-if="$store.state.currentAccount == null"
            @click="getAccount"
            class="bn3637 bn37"
          >
            CONNECT
            <br />WALLET
          </button>
          <span class="normalSize" v-else>
            Connected to 0x...{{
              $store.state.currentAccount.substr(
                $store.state.currentAccount.length - 5
              )
            }}
          </span>
        </div>
      </div>
      <div id="main" class="d-flex flex-column justify-content-center">
        <div
          v-if="$store.state.currentAccount in $store.state.babyOtterLooking"
        >
          You have already minted! <br /><br />
          My baby otter #{{
            $store.state.babyOtterLooking[$store.state.currentAccount]
          }}
          <br />
          <a
            :href="
              'https://opensea.io/assets/ethereum/0xf4014b65e2228b2bc81d826f0c4f2c2f6841726b/' +
              $store.state.babyOtterLooking[$store.state.currentAccount]
            "
            >View it on Opensea.</a
          >
        </div>

        <a
          v-else-if="
            $store.state.currentAccount != null &&
            $store.state.adoptionState == 0 &&
            $store.state.network != 1
          "
          @click="switchNetwork"
          class="width-main-button align-self-center box"
        >
          <span>Wrong network, click to switch</span>
          <img class="width-main-button" src="../assets/adopt.png" />
        </a>
        <a
          v-else-if="
            $store.state.currentAccount != null &&
            $store.state.adoptionState == 0 &&
            2048 - $store.state.countAdoption != 0
          "
          @click="adoptOtter"
          class="width-main-button align-self-center box"
        >
          <span>Adopt my baby otter</span>
          <img class="width-main-button" src="../assets/adopt.png" />
        </a>
        <!--<span
          v-else-if="
            $store.state.currentAccount != null &&
            $store.state.adoptionState == 0 &&
            2048 - $store.state.countAdoption != 0
          "
          >Freemint will resume on June 10th, 6:30 pm (UTC)!<br /><br />Stay
          tuned on
          <a href="https://bit.ly/otterdisc" style="text-decoration: underline">
            discord</a
          >
          or
          <a
            href="https://twitter.com/ochainbabyotter"
            style="text-decoration: underline"
            >twitter</a
          >.</span
        >-->
        <span v-else-if="$store.state.adoptionState == 1">
          Adoption in progress
          <br />
          <svg
            xmlns="http://www.w3.org/2000/svg"
            viewBox="0 -0.5 36 46"
            shape-rendering="crispEdges"
            width="36"
            height="46"
          >
            <path
              stroke="#000000"
              d="M0 0h3M4 0h3M8 0h6M15 0h7M23 0h1M26 0h10M0 1h11M12 1h4M17 1h6M24 1h12M0 2h2M34 2h2M0 3h2M34 3h2M0 4h2M34 4h2M0 5h2M34 5h2M0 6h2M5 6h11M17 6h13M35 6h1M0 7h2M5 7h4M10 7h5M16 7h3M20 7h7M29 7h1M34 7h2M0 8h2M34 8h2M0 9h2M34 9h2M1 10h1M6 10h11M18 10h4M23 10h4M29 10h1M35 10h1M0 11h1M5 11h3M9 11h15M26 11h4M34 11h1M0 12h2M34 12h1M0 13h2M34 13h1M0 14h2M5 14h3M9 14h4M14 14h7M22 14h8M34 14h1M0 15h2M5 15h3M9 15h10M20 15h10M34 15h2M1 16h1M34 16h2M0 17h2M34 17h2M0 18h2M5 18h3M9 18h12M22 18h3M27 18h3M35 18h1M0 19h2M5 19h9M15 19h3M19 19h1M21 19h1M23 19h2M27 19h1M29 19h1M34 19h2M0 20h2M34 20h2M0 21h2M34 21h2M0 22h2M34 22h1M0 23h2M34 23h2M0 24h2M34 24h2M0 25h2M34 25h2M0 26h2M34 26h2M0 27h2M35 27h1M0 28h2M34 28h2M0 29h2M34 29h1M0 30h2M34 30h2M0 31h2M34 31h2M0 32h2M35 32h1M0 33h1M34 33h2M0 34h2M34 34h2M0 35h1M34 35h2M0 36h2M34 36h2M0 37h2M34 37h2M0 38h2M34 38h2M0 39h2M34 39h2M0 40h2M34 40h2M0 41h2M35 41h1M0 42h2M34 42h2M0 43h2M34 43h1M0 44h8M9 44h6M16 44h2M19 44h4M24 44h8M33 44h1M0 45h2M3 45h3M7 45h17M25 45h11 M3 0h1M24 0h1M9 7h1M15 7h1M27 7h1M0 10h1M27 10h1M24 11h1M21 14h1M0 16h1M21 18h1M18 19h1M15 44h1M18 44h1M6 45h1M24 45h1 M7 0h1M22 0h1M25 0h1M16 1h1M16 6h1M34 6h1M19 7h1M28 7h1M22 10h1M28 10h1M34 10h1M1 11h1M25 11h1M13 14h1M19 15h1M25 18h1M34 18h1M22 19h1M25 19h1M28 19h1M34 27h1M34 32h1M1 33h1M1 35h1M34 41h1M34 44h1 M14 0h1M11 1h1M23 1h1M5 10h1M17 10h1M8 11h1M35 11h1M35 12h1M35 13h1M8 14h1M35 14h1M8 15h1M8 18h1M26 18h1M14 19h1M20 19h1M26 19h1M35 22h1M35 29h1M35 43h1M8 44h1M23 44h1M32 44h1M35 44h1M2 45h1"
            />
            <path stroke="#000000" d="M21 38h1">
              <animate
                repeatCount="indefinite"
                attributeName="d"
                dur="0.5s"
                values="M21 38h1 M21 39h1; M21 38h2 M21 39h2; M21 38h3 M21 39h3; M21 38h4 M21 39h4; M21 38h5 M21 39h5; M21 38h6 M21 39h6; M21 38h7 M21 39h7; M21 38h8 M21 39h8"
              />
            </path>
          </svg>
        </span>
        <span v-else-if="$store.state.adoptionState == 2">
          Congratulations, you are the proud parent of a baby otter.
          <br />Take care of it and love it
        </span>
        <span v-else-if="$store.state.adoptionState == 3"
          >Something went wrong, please refresh the page and try again</span
        >
        <span class="mt-5" v-if="2048 - $store.state.countAdoption == 0"
          >The 2048 baby otters have been adopted!</span
        >
        <span v-else-if="$store.state.currentAccount != null" class="mt-5">
          {{ 2048 - $store.state.countAdoption }} lovely baby otter
          <br />remaining for adoption.<br />
          <br /><br /><br /><br />For the full story 👇<br /><button
            class="bn3637 bn37"
          >
            <a
              class="linklinktree"
              href="https://wiki.prof-otterlove.com"
              target="_blank"
            >
              <span>Go to wiki</span>
            </a>
          </button>
        </span>
        <span v-else class="mt-5"
          >2048 babies otters.<br />Fully onchain!<br />Mint price: 0 ETH!<br />Mint
          is LIVE!<br /><br />shhh, they are sleeping right now...<br /><svg
            height="100"
            xmlns="http://www.w3.org/2000/svg"
            viewBox="25 20 50 70"
            shape-rendering="crispEdges"
          >
            <path
              stroke="#000"
              d="M45 26h10m-12 1h3m8 0h3m-15 1h2m12 0h2m-17 1h2m14 0h2m-22 1h5m17 0h4m-26 1h1m2 0h1m18 0h1m2 0h1m-27 1h2m1 0h2m18 0h2m1 0h2m-28 1h2m1 0h1m2 0h11m1 0h4m2 0h1m1 0h2m-27 1h3m1 0h2m14 0h2m1 0h3m-24 1h3m5 0h7m4 0h3m-22 1h2m3 0h4m5 0h4m2 0h2m-22 1h1m3 0h2m11 0h2m2 0h1m-22 1h1m2 0h2m13 0h2m1 0h1m-23 1h2m1 0h2m15 0h4m-24 1h2m1 0h1m2 0h1m3 0h1m2 0h1m3 0h1m3 0h3m-23 1h1m1 0h1m2 0h2m1 0h2m2 0h5m3 0h2m-22 1h3m17 0h2m-21 1h2m15 0h4m-22 1h6m11 0h2m1 0h2m-23 1h2m4 0h4m7 0h2m3 0h2m-24 1h1m8 0h3m1 0h5m5 0h1m-24 1h1m10 0h3m3 0h2m4 0h1m-24 1h1m12 0h2m8 0h1m-24 1h1m13 0h2m3 0h1m3 0h1m-24 1h1m14 0h2m3 0h1m2 0h1m-24 1h1m16 0h1m5 0h1m-24 1h1m17 0h1m4 0h1m-24 1h1m18 0h1m3 0h1m-24 1h2m18 0h4m-23 1h2m19 0h1m-22 1h3m18 0h1m-22 1h1m1 0h2m17 0h1m-22 1h1m2 0h2m16 0h1m-22 1h1m3 0h2m15 0h1m-17 1h3m12 0h1m-21 1h2m5 0h2m11 0h1m-20 1h2m5 0h3m8 0h2m-19 1h2m6 0h3m4 0h3m-17 1h3m6 0h2m3 0h2m-16 1h1m1 0h2m11 0h1m-16 1h1m14 0h1m-16 1h2m12 0h2m-15 1h1m12 0h1m-14 1h2m10 0h2m-13 1h2m8 0h2m-11 1h3m5 0h2m-8 1h3m1 0h3m-5 1h3m6-43h1M46 41h1m-8 19h1m20 0h1m-8-27h1m2 15h1m0 2h1"
            />
            <path
              stroke="#eaeaaa"
              d="M46 27h8m-10 1h12m-13 1h14m-15 1h16m-20 1h2m1 0h6m1 0h11m1 0h2m-24 1h1m2 0h18m2 0h1m-24 1h1m1 0h2m16 0h2m1 0h1m-22 1h1m2 0h14m2 0h1m-18 1h5m7 0h4m-17 1h3m13 0h2m-19 1h3m15 0h2m-20 1h2m17 0h1m-20 2h1m-1 1h1m17 3h1m-19 1h4m13 0h3m-21 1h8m9 0h5m-22 1h10m3 0h3m2 0h3m-21 1h9m1 0h2m2 0h2m2 0h4m-22 1h13m2 0h3m1 0h3m-22 1h7m1 0h6m2 0h2m2 0h2m-22 1h11m1 0h4m1 0h5m-22 1h17m1 0h4m-22 1h18m1 0h3m-21 1h4m1 0h13m-17 1h6m1 0h10m1 0h1m-18 1h18m-20 1h1m2 0h12m1 0h4m-20 1h2m2 0h3m1 0h12m-20 1h3m2 0h15m-20 1h4m3 0h12m-18 1h5m2 0h11m-17 1h5m3 0h1m1 0h6m-15 1h6m3 0h4m-11 1h6m2 0h3m-13 1h1m2 0h11m-14 1h14m-13 1h12m-12 1h12m-11 1h10m-8 1h7m-6 1h5m-3 1h1m-4-41h1m-8 8h1m7 9h1m6 0h1m-9 7h1m10 0h1m1-8h1m-15 3h1m3 1h1m-7 3h1m10 3h1m-9 1h1m3 4h1m-6 8h1"
            />
            <path
              stroke="rgb(251,170,249)"
              d="M48 36h5m-8 1h4m1 0h1m1 0h4m-12 1h5m1 0h1m1 0h5m-14 1h8m1 0h6m-16 1h2m1 0h3m1 0h2m1 0h3m1 0h3m-17 1h2m5 0h2m5 0h2m-16 1h9m1 0h7m-17 1h15m-12 1h11m-8 1h4m1 0h2m-5 1h1m-2-9h1m-1 1h1m1-1h1m-1 1h1m-1 1h1m6 2h1m-7 4h1m-2-3h1"
            /></svg
          ><br /><br />Beware of the explosion! <br /><a
            style="text-decoration: underline"
            href="https://wiki.prof-otterlove.com/story/chapter-4-you-know-who"
            targer="_blank"
            ><img class="h100" src="../assets/explosion.gif" /></a
          ><br /><br />
          <br />Connect to continue</span
        >
      </div>
      <div class="footer d-flex justify-content-around align-items-end">
        <a
          v-if="$store.state.currentAccount != null"
          @click="showRegister"
          class="align-self-center fix-book-width"
        >
          <img
            v-if="$store.state.book == false"
            class="book"
            src="../assets/close.png"
          />
          <img
            v-if="$store.state.book == true"
            class="book"
            src="../assets/open.png"
          />
        </a>
        <a
          class="linklinktree fix-book-width"
          href="https://linktr.ee/prof_otterlove"
        >
          <img class="linktree" src="../assets/linktree.png" /><br />
          <span>links</span>
        </a>
      </div>
    </section>
  </MatchMedia>
</template>

<script>
import { MatchMedia } from "vue-component-media-queries";
import Web3Helper from "@/lib/Web3Helper.js";
import OnChainBabyOtter from "@/lib/OnChainBabyOtter";
import { mapGetters } from "vuex";

export default {
  name: "lbo",
  components: {
    MatchMedia,
  },
  data() {
    return {
      imgLoaded: 0,
      title: this.$title,
      discord: this.$discord,
      twitter: this.$twitter,
    };
  },
  computed: {
    ...mapGetters([
      "currentAccount",
      "adoptionState",
      "registrationState",
      "countAdoption",
      "listRegistrationOwners",
      "alreadyAdopt",
      "babyOtterLooking",
      "book",
    ]),
  },
  methods: {
    async getAccount() {
      try {
        await Web3Helper.init(
          process.env.NODE_ENV !== "production",
          (eventData) => {
            this.$store.dispatch("addNewEvent", eventData);
          }
        );
        this.$store.dispatch(
          "contractAddress",
          Web3Helper.getContractAddress()
        );
        await Web3Helper.requestAccount();
      } catch (error) {
        console.log("[Exception]", error);
      }
    },
    async adoptOtter() {
      if (this.alreadyAdopt.includes(this.currentAccount)) {
        alert("Only one adoption is permitted");
      } else {
        try {
          await OnChainBabyOtter.adoptOtter();
        } catch (error) {
          console.log("[Exception]", error);
        }
      }
    },
    async switchNetwork() {
      try {
        await Web3Helper.switchToEthereum();
      } catch (error) {
        console.log("[Exception]", error);
      }
    },

    showRegister() {
      this.$store.dispatch("book", true);
      this.$emit("showRegister");
    },
  },
};
</script>

<style lang="scss">
#lbo {
  background-color: #add398;
}

.fix-width {
  width: 160px;
}

.width-main-button {
  width: 350px;
}

.footer {
  position: absolute;
  bottom: 10px;
  width: 100%;
}
@media screen and (max-width: 760px) {
  .book {
    max-height: 50px;
  }
  .normalSize {
    font-size: 8px;
  }
  .lowSize {
    font-size: 7px;
    line-height: 10% !important;
    color: rgb(155, 13, 13);
  }
  #main {
    height: 45vh;
    font-size: 12px;
  }
}

@media screen and (min-width: 760px) {
  .book {
    max-height: 100px;
  }

  .normalSize {
    font-size: 12px;
  }
  #main {
    height: 80vh;
  }
}
.fix-book-width {
  width: 140px;
}
.linktree {
  max-height: 40px;
}

.h100 {
  height: 150px;
}

a {
  color: black !important;
}

a:hover {
  color: black !important;
  text-decoration: none !important;
  cursor: pointer;
}

.infos {
  font-size: 8px;
}

.title {
  font-size: 18px;
}

.box {
  position: relative;
  display: inline-block; /* Make the width of box same as image */
}

.box span {
  position: absolute;
  z-index: 10;
  margin: 0 auto;
  left: 0;
  right: 0;
  top: 35%; /* Adjust this value to move the positioned div up and down */
  text-align: center;
  width: 80%;
}

.center {
  margin-top: 38vh;
}
</style>
