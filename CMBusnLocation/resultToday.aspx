<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="resultToday.aspx.vb" Inherits="CMBusnLocation_4D" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Css/Header4.css" rel="stylesheet">
    <link href="../Css/Header3.css" rel="stylesheet">
    <link href="../Css/shine.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" Runat="Server">
    <style>
        
        
        .banner-box .banner-box-title span {
            color: white;
            font-size: 50px;
            font-weight: bold;
            border-bottom: 2px solid white;
            text-shadow: 3px 3px 5px #000000c4;
        }
        

        .c-themered {
            color: #c1272d !important;
        }
        .banner-box {
            position: relative;
        }
        .banner-box .banner-box-title {
            position: absolute;
            height: 100%;
            width: 100%;
            text-align: center;
            top: 0;
        }
        .v-mid {
            display: flex;
            justify-content: center;
            align-content: center;
            flex-direction: column;
        }
        .round-solid-border{
            border:1px solid #d3d3d3;
            border-radius:20px;
        }
        .tbl-5{
            width:100%;
            margin-bottom:0;
            text-align:left;
            min-width:450px;
            font-size:0.8rem;
        }
        .tbl-5 td {
           padding: 10px 0;
        }
        .round-span-themered {
            color: white;
            background: #c1272d;
            border-radius: 30px;
            font-weight: bold;
            display: inline-block;
        }
        .round-span-black {
            color: white;
            background: #323232;
            border-radius: 30px;
            font-weight: bold;
            display: inline-block;
        }
        .tbl-6 {
            width: 100%;
            text-align: left;
            margin: 0;
        }
        .tbl-6 td {
            padding: 2%;
        }
        .tbl-6 td:not(:last-child) {
            border-right: 1px solid lightgray;
        }
        .gd-list {
            list-style: none;
            counter-reset: my-awesome-counter;
            padding: 0;
        }
        .gd-list li::before {
            content: "0" counter(my-awesome-counter); 
            content: counter(my-awesome-counter);
            color: white;
            font-weight: bold;
            background-color: #c1272d;
            border-radius: 100px;
            padding: 1px 10px;
            text-align: center;
            display: inline-block;
            margin: 4px;
            margin-right: 10px;
            position: absolute;
        }
        .gd-list li {
            counter-increment: my-awesome-counter;
        }
        .gd-list li {
            padding-left: 0.5rem;
            line-height: 1.8;
            margin-bottom: 1rem;
        }
        .gd-list * {
            font-size: 0.9rem;
        }
        .round-dotted-border {
            border: 1px dashed lightgray;
            border-radius: 20px;
        }
        .tbl-1 {
            min-width: 900px;
            border-collapse: unset;
            border-spacing: 2px;
            width: 100%;
        }
        #lotterygame-section .tbl-1 {
            min-width: 500px;
        }
        .tbl-1 tr:nth-child(odd) {
            background-color: #e6e6e6;
        }
        #lotterygame-section .tbl-1 th:nth-child(1), #lotterygame-section .tbl-1 td:nth-child(1) {
            text-align: left;
        }
        .tbl-1 th {
            background-color: #c1272d;
            color: white;
            font-weight: bold;
            width: calc(100%/6);
            padding: 5px 10px;
            font-size: 15px;
        }
        .tbl-1 td {
            padding: 5px 10px;
        }
        .tbl-1 tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .gd-list li:last-child {
            margin-bottom: 0;
        }

        .round-span-redborder {
            color: #c1272d;
            background: #fff;
            border-radius: 30px;
            font-weight: bold;
            display: inline-block;
            border: 1px solid #c1272d;
        }
        .f-sm {
            font-size: 0.8rem;
        }
        .round-span-themered {
            color: white;
            background: #c1272d;
            border-radius: 30px;
            font-weight: bold;
            display: inline-block;
        }
        .round-span-black {
            color: white;
            background: #323232;
            border-radius: 30px;
            font-weight: bold;
            display: inline-block;
        }
        .v-top {
            vertical-align: top;
        }
        #win {
            text-align:left
        }
        .win .win-head {
            background-color: #c1272d;
            color: white;
        }
        .win .win-body {
            font-size: 0;
            display: flex;
        }
        .win .win-left {
            background-color: #ececec;
        }
        .win .win-content {
            flex: 0.5;
            display: inline-block;
            font-size: 13px;
            vertical-align: top;
        }
        .win-type.selected, .win-cur.selected {
            background-color: #c1272d;
            color: white;
        }
        .win-type, .win-cur {
            cursor: default;
            display: inline-block;
            background-color: #fff;
            width: 49%;
            padding: 5px;
            text-align: center;
            margin-bottom: 3px;
            font-weight: 500;
            box-shadow: 1px 1px 3px #8080808c;
        }
        .win-cur {
            width: 24% !important;
        }
        /*input {
            border: 0;
            padding: 5px 3px;
            box-shadow: 1px 1px 3px #8080808c;
        }*/
        label {
            font-weight: 500;
        }
        /*label, input {
            display: block;
        }*/
        .btn-calc {
            width: 50%;
            display: inline-block;
            background-color: #c1272d;
            color: white;
            font-weight: 600;
            border: 0;
            border-radius: 30px;
            font-size: 15px;
        }
        .win .win-right {
            background-color: #262626;
            color: white;
        }
        .win-title {
            color: #f4d240;
            font-weight: 600;
            font-size: 20px;
        }
        .win-tbl1, .win-tbl2 {
            color: white;
            width: 100%;
        }
        .win-sub {
            color: white;
        }
        .win-tbl2 tr td:nth-child(2) {
            color: #f4d240;
            font-size: 22px;
            font-weight: bold;
        }
        .win-tbl2 tr td {
            vertical-align: top;
            padding: 5px;
        }
        .win-tbl2 tr td:nth-child(3) {
            font-size: 12px;
            padding-bottom: 10px;
            color: greenyellow;
        }
        @media (max-width: 768px){
            .win .win-content, .win .win-body {
                display: block;
            }
            input {
                width: 100%;
            }
            .btn-calc {
                width: 100%;
            }
            .win-tbl2 td {
                display: block;
                box-sizing: border-box;
                clear: both;
            }
            .postcontent, .postcontent.bothsidebar, .sidebar, .col_full, .col_half, .col_one_third, .col_two_third, .col_three_fourth, .col_one_fourth, .col_one_fifth, .col_two_fifth, .col_three_fifth, .col_four_fifth, .col_one_sixth, .col_five_sixth {
                width: 100%;
                margin-right: 0;
                float: none;
                margin-bottom: 50px !important;
            }
            form .col_full, form .col_half, form .col_one_third, form .col_two_third, form .col_three_fourth, form .col_one_fourth, form .col_one_fifth, form .col_two_fifth, form .col_three_fifth, form .col_four_fifth, form .col_one_sixth, form .col_five_sixth {
                margin-bottom: 25px !important;
            }
            
            /*#cur_selection{
                text-align:left !important;
            }*/
        }

        .box-6d-rounded {
            max-width: 150px;
            width: 100%;
            margin: auto;
            border: 1px solid #cdcdcd;
            border-radius: 30px;
            padding: 5px;
            line-height: 1;
        }
        .box-6d-rounded .tbl-box-6d {
            width: 100%;
            table-layout: fixed;
            text-align: center;
            margin: 0;
        }
        .box-6d-rounded .tbl-box-6d td {
            padding: 0 !important;
            font-weight: bold;
        }
        .clean-tbl, .clean-tbl tr, .clean-tbl td {
            margin: auto;
            padding: 0 !important;
            line-height: 1;
        }
        .box-6d-rounded .tbl-box-6d td.clr {
            background-color: lightgray;
        }
        .or-mid {
            padding: 5px 8px;
            margin: 0 2px;
            background-color: #585858;
            color: white;
            border-radius: 20px;
        }
        .mod-6d-long {
            font-size: 1.1rem;
            min-width: 715px;
        }

        .txt20 {
            font-size: 20px;
        }
        .txt14 {
            font-size: 14px;
        }
        .c-gray {
            color: gray;
        }
        h1, h2, h3, h4, h5, h6 {
            color: #313131 !important;
            font-family: Lato;
        }
        .tabs {
            position: relative;
            margin: 0 0 30px 0;
        }
        .imagetab {
            border: 0;
        }

        .imagetab li {
            flex-grow: 1;
            flex-basis: 0;
            border-radius: 0;
            border-bottom: 0;
        }
        .imagetab.nav-tabs .nav-link.active, .imagetab.nav-tabs .nav-item.show .nav-link {
            border-color: #c1272d;
        }
        .imagetab.nav-tabs .nav-link {
            border: 1px solid transparent;
            border-radius: 0;
            border-bottom: 6px solid #dee2e6;
        }
        .tab-container {
            position: relative;
            padding: 20px 0 0;
        }
        .fluid-width-video-wrapper {
            width: 100%;
            position: relative;
            padding: 0;
        }
        .v-bottom {
            display: flex;
            justify-content: flex-end;
            align-content: center;
            flex-direction: column;
        }
        h3 {
            font-size: 24px;
        }
        .f-0 {
            font-size: 0;
        }
        img{
            max-width:100%;
        }
        .imagetab.nav-tabs .nav-link img {
            width: 62px;
        }
        .w-20 {
            width: 20%;
        }
        .bg-themered {
            background-color: #003032 !important;
        }
        .txt36 {
            font-size: 36px;
        }
        .txt12 {
            font-size: 12px;
        }
        .inline-block {
            float: none !important;
            display: inline-block !important;
        }
        .m-auto-hori {
            margin: 0 auto;
        }
        /*.slide-tab {
            position: relative;
        }
        .slide-tab .slide-tab--ul {
            list-style: none;
            margin: 0;
            display: flex;
            text-align: center;
            border: 2px solid gray;
            border-radius: 5rem;
        }
        .slide-tab .slide-tab--ul li {
    flex-grow: 1;
    flex-basis: 0;
    overflow: hidden;
    text-overflow: ellipsis;
    padding: 5px;
    white-space: nowrap;
    color: gray;
        }
        .slide-tab .slide-tab--bg {
    position: absolute;
    width: calc(100%/4); 
    height: 100%;
    background: #c1272d;
    top: 0;
    left: 0;
    border-radius: 5rem;
    transition: left 0.35s cubic-bezier(0, 0.81, 0.25, 1.22);
    color: white;
    font-weight: 700;
    padding: 5px;
    cursor: default;
        }*/
        .slide-tab {
            position: relative;
        }

        .slide-tab .slide-tab--ul {
                list-style: none;
                margin: 0;
                display: flex;
                text-align: center;
                border: 2px solid gray;
                border-radius: 5rem;
        }

        .slide-tab .slide-tab--ul li {
            flex-grow: 1;
            flex-basis: 0;
            overflow: hidden;
            text-overflow: ellipsis;
            padding: 5px;
            white-space: nowrap;
            color: gray;
        }

        .slide-tab .slide-tab--ul li a {
                color: gray;
                font-weight: 600;
        }

        .slide-tab .slide-tab--ul li.ui-tabs-active {
            color: white;
        }

    
        .slide-tab .slide-tab--bg {
            position: absolute;
            /* width: calc(100%/4); */
            height: 100%;
            background: #c1272d;
            top: 0;
            left: 0;
            border-radius: 5rem;
            transition: left 0.35s cubic-bezier(0, 0.81, 0.25, 1.22);
            color: white;
            font-weight: 700;
            padding: 5px;
            cursor: default;
        }

        .slide-tab .slide-tab--bg .slide-tab--bgspn1 {
            display: table;
            table-layout: fixed;
            height: 100%;
            width: 100%;
        }

        .slide-tab .slide-tab--bg .slide-tab--bgspn1 .slide-tab--bgspn2 {
                overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;
                text-align: center;
                display: table-cell;
                vertical-align: middle;
        }

        .slide-tab-dark .slide-tab .slide-tab--ul {
            border: 2px solid #fff;
        }

        .slide-tab-dark .slide-tab .slide-tab--ul li, .slide-tab-dark .slide-tab .slide-tab--ul li a {
            color: white;
        }

        .slide-tab-dark .slide-tab .slide-tab--bg {
            background: #ae0001;
        }
        h1 > span:not(.nocolor):not(.badge), h2 > span:not(.nocolor):not(.badge), h3 > span:not(.nocolor):not(.badge), h4 > span:not(.nocolor):not(.badge), h5 > span:not(.nocolor):not(.badge), h6 > span:not(.nocolor):not(.badge) {
            color: #c1272d;
        }
        .fancy-title.title-bottom-border h1, .fancy-title.title-bottom-border h2, .fancy-title.title-bottom-border h3, .fancy-title.title-bottom-border h4, .fancy-title.title-bottom-border h5, .fancy-title.title-bottom-border h6 {
            border-bottom: 2px solid #c1272d;
        }

        /*Corporate Value*/
        #corpvalue .heading-block h4, #corpvalue h2 {
            color: #333 !important;
        }
        #corpvalue * {
            font-family: 'Raleway';
        }
        /*Play Responsibility*/
        h2, h3, h4 {
            margin: 0 !important;
        }
        .bg-verylightgray {
            background-color: #f1f2f2 !important;
        }
        .input-2.input-2--bigfont {
            font-size: 1.2rem;
        }
        .input-2 {
            padding: 0.2rem 0.6rem !important;
            font-size: 0.8rem;
            border: 1px solid gray;
            min-width: 180px;
            vertical-align: middle;
            border-radius: 0 !important;
        }
        .btn-1 {
            font-size: 0.7rem;
            border-radius: 30px;
            border: 0;
            padding: 0.3rem 1rem;
            color: white;
            background-color: gray;
            min-width: 100px;
        }
        .btn-2 {
            font-size: 0.8rem;
            border: 0;
            padding: 0.5rem;
            color: white;
            background-color: gray;
        }
        .btn-1.btn-1-red, .btn-2.btn-2-red, .btn-3.btn-3-red {
            background-color: #c1272d;
        }
        .btn-3 {
            font-size: 0.8rem;
            border: 0;
            padding: 0.25rem 0.6rem;
            color: white;
            background-color: gray;
            vertical-align: middle;
        }
        .on-hover-pointer:hover {
            cursor: pointer;
        }
        .card-2-contact {
            font-size: 0;
            border-radius: 15px;
        }
        .card-2 {
            box-shadow: 0 0 6px #00000038;
            background-color: white;
        }
        .map_cty.map_cty--id {
            top: 69%;
            left: 27%;
        }
        .map_cty {
            position: absolute;
            width: 17%;
            transition: ease .2s;
        }
        .map_cty.map_cty--my {
            top: 52%;
            left: 25%;
        }
        .map_cty.map_cty--th {
            top: 32%;
            left: 6.5%;
        }
        .map_cty.map_cty--vn {
            top: 21%;
            left: 35%;
        }
        .map_cty.map_cty--cb {
            top: 22%;
            left: 17.5%;
        }
        .map_cty.map_cty--mn {
            left: 8.5%;
            top: 11%;
        }
        .card-2-contact .c2con-img {
            width: 25%;
        }
        .card-2-contact .c2con {
            display: inline-block;
            vertical-align: middle;
            padding: 10px 15px;
        }
        .card-2-contact .c2con-text {
            width: 75%;
            font-size: 1rem;
            height: 100%;
            font-weight: bold;
        }
        .card-2-contact .c2con-img img {
            width: 100%;
        }
        #content {
            overflow: visible;
            background-color: transparent !important;
        }
        .bg-kamekame {
            background: url('../assets/images/KIMCO ICONS/wbg.png');
            background-size: 100%;
        }
        .main-res {
            padding-top: 9%;
        }
        .main-jp-tab {
            position: absolute;
            top: -6%;
            width: 100%;
        }
        .animate-move-up {
            transition:linear 0.1s;
        }
        .p-dot5 {
            padding: 0.5%;
        }
        .bg-black {
            background-color: #000 !important;
        }
        .dragonjp {
            background: url('../assets/images/KIMCO ICONS/jppool-bg.png') center center;
            background-size: 100% 100%;
        }
        .dragonjp .djp-dt {
            /* text-align: center; */
            font-weight: bold;
            text-shadow: 2px 2px 2px #000000a6;
            font-size: 1.5rem;
            line-height: 1;
            padding-top: 0.5rem;
            color: #fff;
        }
        .dragonjp .djp-pool {
            text-align: center;
            background: linear-gradient(310deg, #BF953F, #FCF6BA, #B38728, #FBF5B7, #AA771C);
            box-shadow: 0px 4px 0 1px #87451a;
            text-shadow: 1px 1px #f6ecae, -1px -1px #b38829;
            border-radius: 62px;
            color: #6e2d20;
            /* font-weight: bolder; */
            font-size: 45px;
            font-family: tamba-bold;
            margin-bottom: 15px;
        }
        .icon {
            position: relative;
            overflow: hidden;
        }
        .bg-themered-plate {
            background-color: #003032 !important;
            box-shadow: 0px 2px 0 1px #6f171b;
            border-radius: 62px;
        }
        .bg-gray-plate {
            background-color: #a4a4a4 !important;
            box-shadow: 0px 2px 0 1px #676767;
            border-radius: 62px;
        }
        .dragonjp .djp-res {
            display: flex;
            text-align: center;
        }
        .dragonjp .djp-res .djp-res-elm {
            flex-grow: 1;
            flex-basis: 0;
            font-family: tamba-bold;
            padding: 3px;
        }
        .dragonjp .djp-res .djp-res-elm span:first-child {
            background-color: #fff;
            display: inline-block;
            width: 100%;
            border-radius: 10px;
            color: #c1272d;
            font-weight: bolder;
            /* font-size: 58px; */
            font-size: 30px;
        }
        .dragonjp .djp-res .djp-res-elm:last-child span:first-child {
            background: #df2424;
            box-shadow: 0px 4px 0 1px #800b0b;
            text-shadow: 1px 1px #db2929, -1px -1px #9b1616;
            color: #fff394;
        }
        .txt15 {
            font-size: 15px;
        }
        .dragonjp .djp-res.djp-res-conz .djp-res-elm span:first-child {
            font-size: 25px;
        }
        .a-white {
            color: #fff !important;
        }
        .resultdate {
            position: relative;
        }
        .rdt-left, .rdt-right {
            position: absolute;
            width: 1.5%;
            height: 100%;
        }
        .rdt-left {
            left: 0;
            top: 0;
        }
        .rdt-right {
            right: 0;
            top: 0;
        }
        .rdt-center.rdt-center--yellow {
            background-color: #ffde17;
            color: black !important;
        }
        .rdt-center {
            background-color: black;
            width: 97%;
            margin: auto;
        }
        .res-tbl-1.res-tbl-1-yellow {
    border-collapse: unset;
    box-shadow: unset;
    border-top-right-radius: 15px;
    border-top-left-radius: 15px;
    border-spacing: 1px;
}

.res-tbl-1 {
    border-top-left-radius: 5px;
    border-top-right-radius: 5px;
    overflow: hidden;
    box-shadow: 1px 1px 5px #00000052;
    margin: 0;
    font-size: 1.2rem;
}
.res-tbl-1.res-tbl-1-yellow th {
    color: #e7d766;
    padding: 5px;
}
.res-tbl-1 th {
    background-color: black;
    color: white;
    font-weight: bold;
}
.res-tbl-1.res-tbl-1-yellow td {
    border: 0;
    padding: 6px;
    box-shadow: 1px 1px 5px #0000001c;
}
.res-tbl-1 td:first-child {
    background-color: #003032;
    color: white;
    font-weight: bold;
}
.res-tbl-1 td {
    background-color: white;
    padding: 4px;
    border: 1px solid #c8c8c8;
}
.res-tbl-1 span.r {
    color: red;
}
.res-tbl-2.res-tbl-2-yellow {
    border-collapse: unset;
    box-shadow: unset;
    border-top-right-radius: 15px;
    border-top-left-radius: 15px;
    border-spacing: 1px;
}

.res-tbl-2 {
    border-top-left-radius: 5px;
    border-top-right-radius: 5px;
    overflow: hidden;
    box-shadow: 1px 1px 5px #00000052;
    margin: 0;
    font-size: 1.1rem;
}
.res-tbl-2 tr:first-child {
    /* border-bottom: 1px solid #c8c8c8; */
}
.res-tbl-2.res-tbl-2-yellow th {
    color: #e7d766;
    padding: 5px;
    background-color: black;
}
.res-tbl-2 th {
    background-color: #c1272d;
    color: white;
}
.res-tbl-2.res-tbl-2-yellow td {
    border: 0;
    padding: 6px;
    box-shadow: 1px 1px 5px #0000001c;
}
.res-tbl-2 td {
    padding: 4px;
    /* border-right: 1px solid #c8c8c8; */
    border: 1px solid #c8c8c8;
    background-color: white;
}
.res-tbl-2 span.r {
    font-size: 0.8rem;
    vertical-align: top;
    font-weight: bold;
}

.res-tbl-2 span.r {
    color: red;
}
.jppool-box {
    position: absolute;
    color: #ed1c24;
    font-size: 1.8rem;
    /* top: 54%; */
    top: 57%;
    width: 100%;
    font-weight: bold;
}
.dtstamp.dtstamp--mod2 {
    font-size: 0.8rem;
    margin-top: -0.2rem;
    text-shadow: none;
}
.dtstamp {
    font-size: 0.65rem;
    color: #b1b1b1;
    font-style: italic;
    display: block;
    line-height: 1;
    margin-top: 0.2rem;
    text-align: center;
}
.fourd-jp-v2 {
    text-align: center;
    height: 100%;
    background: url('../assets/images/KIMCO ICONS/4d-bg-black.png') center center no-repeat;
    background-size: 100% 100%;
    color: white;
    word-break: break-word;
    font-size: 1.2rem;
}
.m-auto-hori {
    margin: 0 auto;
}
.fourd-jp-v2 .fourd-jp-v2-top .fourd-header {
    font-size: 1.8rem;
    text-transform: uppercase;
}
.fourd-jp-v2 .fourd-header {
    color: yellow;
    font-weight: bold;
    font-size: 1.5rem;
}
.c-gold {
    color: #d8bc71 !important;
}
hr.white-translucent {
    border-color: rgba(255, 255, 255, 0.25);
}
hr.gold {
    border-top: 1px solid rgb(236, 178, 29);
}
.gold {
    color: #fbe750 !important;
}
.res-tbl-1.res-tbl-1--6d.res-tbl-1--6d-yellow tr {
    border-bottom: 1px solid #a30000;
}
.res-tbl-1.res-tbl-1--6d tr {
    border-bottom: 1px solid #c8c8c8;
}
.res-tbl-1.res-tbl-1--6d.res-tbl-1--6d-yellow th {
    color: #e7d766;
    padding: 5px;
}
.res-tbl-1.res-tbl-1--6d td:first-child {
    width: 40%;
}
.res-tbl-1.res-tbl-1--6d td {
    width: 24px;
    padding: 4px 3px;
    border: 0;
}
.res-tbl-1.res-tbl-1--6d span {
    color: white;
}
.res-tbl-1.res-tbl-1--6d td .sixd-firstpz span {
    display: inline-block;
    color: #c1272d !important;
    padding: 0 5%;
    font-weight: bold;
}
.res-tbl-1.res-tbl-1--6d .void {
    padding: 0 0.5%;
}
.res-tbl-1.res-tbl-1--6d .voidor {
    color: white;
    background-color: #666666;
    width: 30px;
}
.res-tbl-1.res-tbl-1--6d .void span {
    display: block;
    height: 20px;
    background-color: #b3b3b3;
}
.HL-box {
    position: absolute;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    background-color: #000000d6;
    opacity: 0;
    transition: .5s ease;
}
.HL-box:hover {
    opacity: 1;
}
.HL-box .HL-viewmore {
    display: inline-block;
    color: white;
    border: 1px solid white;
    padding: 0.3rem 1.5rem;
}
.HL-box .HL-viewmore:hover {
    cursor: pointer;
}
.max-text-lines-1 {
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 1;
}
.bg-verylightgray {
    background-color: #f1f2f2 !important;
}
.fluid-width-video-wrapper {
    width: 100%;
    position: relative;
    padding: 0;
}
.fluid-width-video-wrapper {
    height: 100%;
}
.fluid-width-video-wrapper iframe, .fluid-width-video-wrapper object, .fluid-width-video-wrapper embed {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
}
.sale-flash.sale-flash--mod {
    font-size: 10px;
    padding: 1px 6px;
    top: 12px;
    left: 12px;
    background-color: #fb2727;
}
.ytselect.active {
    background-color: lightgray;
}
a {
    color: #bc1020;
}
        @media (min-width: 991px) {
            .xl-hide {
                display: none;
            }
        }
        @media (max-width: 991px){
            .m-hide {
                display: none;
            }
            #content {
                /* background-image: url(/images/payout_bg.png) !important; */
                background-image: none !important;
                background-size: 100%;
                background-repeat: no-repeat;
            }
            .bg-kamekame {
                background: url('../assets/images/KIMCO ICONS/Kamekame.jpg');
                background-size: 12%;
            }
            .jppool-box {
                /* font-size: 29px; */
                font-size: 1.3rem;
            }
            .dtstamp.dtstamp--mod2 {
                font-size: 0.5rem;
            }
            .fourd-jp-v2 {
                font-size: .9rem;
            }
            .fourd-jp-v2 .fourd-jp-v2-top .fourd-header {
                font-size: 1.4rem;
            }
            .fourd-jp-v2 .fourd-header {
                font-size: 1.2rem;
            }
            .res-tbl-1.res-tbl-1--6d td:first-child {
                width: 30%;
            }
        }
        @media (max-width: 767px){
            .banner-box .banner-box-title span {
                font-size: 9vw;
                border-bottom: 1.5px solid white;
            }
            .sm-100 {
                width: 100% !important;
            }
            h3 {
                font-size: 20px;
            }
            .main-res {
                padding-top: 0;
            }
            .main-jp-tab {
                position: unset;
                width: auto;
            }
            .sm-25 {
                width: 25% !important;
            }
            .sm-show {
                display: initial !important;
            }
            .dragonjp {
                background: url('../assets/images/KIMCO ICONS/jppool-bg-mob.png') center center;
                background-size: 100% 100%;
            }
            .dragonjp .djp-dt {
                font-size: 1.3rem;
            }
            .dragonjp .djp-dt span {
                font-size: .9rem;
            }
            .dragonjp .djp-pool {
                font-size: 6vw;
                padding: 2% 0;
            }
            .dragonjp .djp-res .djp-res-elm {
                padding: 1px;
            }
            .dragonjp .djp-res .djp-res-elm span:first-child {
                border-radius: 5px;
                font-size: 7vw;
            }
            .jppool-box {
                font-size: 5.5vw;
            }
            .dtstamp.dtstamp--mod2 {
                font-size: 2vw;
            }
            .res-tbl-1.res-tbl-1--6d td:first-child {
                width: auto;
            }
            
        }
        @media (max-width: 575px){
            .container, #header.full-header .container, .container-fullwidth {
                width: 100% !important;
                padding-left: 40px !important;
                padding-right: 40px !important;
            }
        }
        /*font class*/
        .font-family-raleway {
            font-family: 'Raleway' !important;
        }

    </style>
    <!--Start Header-->
    <header id="header" class="full-header">
                
                <%--<div id="login-wrap">
                    <div class="login-wrap-user">
                        <input placeholder="Phone Number" name="UN" id="txtLoginUsername" class="input-1">
                        <input placeholder="Password" name="PW" id="txtLoginPass" class="input-1" type="password">
                        <div id="btnLogin" class="inline-block btn-1 btn-1-red text-center" onclick="GDP_LOGIN()">LOGIN</div>
                        <a class="btn-1 inline-block text-center" id="btnSignUp" href="/member/signup.aspx">SIGN UP</a>

                        <div class="login-wrap-user-fp">
                            <a href="/member/forgotpw.aspx">forgot password?</a>
                        </div>
                    </div>
                    <div class="login-wrap-flag">
                        LOGIN
                    </div>
                </div>--%>
                
                <div id="header-wrap" class="">
                    <div class="container clearfix">
                        <div class="cornered"></div>
                        <div id="primary-menu-trigger"><%--<i class="icon-reorder"></i>--%><i class="fas fa-bars text-danger"></i></div>

                        <!-- Logo
					============================================= -->
                        <div id="logo">
                            <a href="/" class="standard-logo">
                                <img src="../assets/images/KIMCO ICONS/logo.png" alt="kimlotto"></a>
                            <a href="/" class="retina-logo">
                                <img src="../assets/images/KIMCO ICONS/logo@2x.png" alt="kimlotto"></a>
                        </div>
                        <!-- #logo end -->

                        <!-- Primary Navigation
					============================================= -->
                        <nav id="primary-menu">
                            <ul class="sf-js-enabled d-block" style="touch-action: pan-y;">
                                <li><a href="home.aspx">Home</a></li>
                                <li class="sub-menu"><a href="#" class="sf-with-ul">Our Games</a>
                                    <ul class="menu-pos-invert" id="l1" style="display:none;">
                                        
                                        <li><a href="4D.aspx">KIM LOTTO 4D</a></li>
                                        <li><a href="6D.aspx">KIM LOTTO 6D</a></li>
                                        <li><a href="prize.aspx">Prize Structure</a></li>
                                        <li><a href="Machine.aspx">Machine Design &amp; Spec</a></li>
                                        <li><a href="How-to-draw.aspx">How We Draw?</a></li>
                                    </ul>
                                </li>
                                <li class="sub-menu"><a href="#" class="sf-with-ul">About Us</a>
                                    <ul class="menu-pos-invert" id="l2" style="display:none;">
                                        <li><a href="about-us.aspx">About Us</a></li>
                                        <li><a href="long-long.aspx">About LONG LONG</a></li>
                                        <li><a href="about-corporate-value.aspx">Our Corporate Value</a></li>
                                        <li><a href="about-play-responsibility.aspx">Play Responsibility</a></li>
                                        <li><a href="about-protect.aspx">Protect Yourself</a></li>
                                        <li><a href="about-contact-us.aspx">Contact Us</a></li>
                                    </ul>
                                </li>
                                <li class="sub-menu"><a href="#" class="sf-with-ul">Results</a>
                                    <ul class="menu-pos-invert" id="l3" style="display:none;">
                                        <li><a href="resultToday.aspx">Today Result</a></li>
                                        <li><a href="resultPast.aspx">Past Results</a></li>
                                        <li><a href="resultJackpotWinner.aspx">6+1D Jackpot Winner</a></li>
                                        <li><a href="resultDidIWin.aspx">Did I win?</a></li>
                                        <li><a href="resultPrizeCal.aspx">Prize Calculator</a></li>
                                        <li><a href="resultStatistics.aspx">Statistics</a></li>
                                        <li><a href="resultWatchLiveApp.aspx">Watch Live in GDApp</a></li>
                                        <li><a href="resultWatchLiveFB.aspx">Watch Live in FB</a></li>
                                        <li><a href="resultWatchLiveWeb.aspx">Watch Live in Web</a></li>
                                        <li><a href="resultWatchLiveWechat.aspx">Watch Live in WeChat</a></li>
                                    </ul>
                                </li>
                                <li class="sub-menu"><a href="#" class="sf-with-ul">Jackpot</a>
                                    <ul class="menu-pos-invert" id="14" style="display:none;">
                                        <li><a href="dragonJackpot.aspx">Dragon Jackpot 6+1D</a></li>
                                        <li><a href="/jackpot/tracker">4D Jackpot Tracker</a></li>
                                        <li><a href="/jackpot/how-it-works">How It Works?</a></li>
                                        <li><a href="/jackpot/calculator">Jackpot Calculator</a></li>
                                        <li><a href="/jackpot/how-to-win">How to Win?</a></li>
                                        <li><a href="/jackpot/sharing-rules">Sharing Rules</a></li>
                                    </ul>
                                </li>
                                <%--<li class="sub-menu"><a href="#" class="sf-with-ul">The Community</a>
                                    <ul style="display: none;">
                                        <li><a href="/community">Connect Us</a></li>
                                        <li><a href="/community/longlong">Long Long Dream Number</a></li>
                                        <li><a href="/community/partner">Partner Program</a></li>
                                        <li><a href="/community/our-videos">Our Videos</a></li>
                                        <li><a href="http://blog.gdlotto.com/" target="_blank">Blog</a></li>
                                    </ul>
                                </li>--%>
                                
                                <%--<li class="sub-menu"><a href="#" class="sf-with-ul">GDPOINTS
                                    </a>
                                    <ul class="menu-pos-invert" style="display: none;">
                                        <li><a href="/gdpoints">GDPOINTS.COM</a></li>
                                        
                                        <li><a href="/member/login.aspx">Login</a></li>
                                        <li><a href="/member/signup.aspx">Sign Up</a></li>
                                        
                                    </ul>
                                </li>

                                <li class="sub-menu"><a href="#" class="sf-with-ul">ENG ▼</a>
                                    
                                    <ul class="menu-pos-invert" style="display: none;">
                                        <li onclick="doLangChg('en')"><a href="javascript:void(0)">ENGLISH</a></li>
                                        <li onclick="doLangChg('cn')"><a href="javascript:void(0)">中文</a></li>
                                        <li onclick="doLangChg('kh')"><a href="javascript:void(0)">KHMER</a></li>
                                    </ul>
                                </li>--%>
                            </ul>

                        </nav>
                        <!-- #primary-menu end -->

                    </div>

                </div>

            </header>
    <!-- END HEADER -->
    <%--<div class="banner-box">
        <img src="../assets/images/KIMCO ICONS/home-cover_en-us.jpg" class="m-hide img-fluid" />
        <img src="../assets/images/KIMCO ICONS/home-cover-mob_en-us.jpg" class="xl-hide img-fluid" />
        <%--<div class="banner-box-title v-mid">
        <div>
            <span <%--style="color:white; font-size:50px; font-weight:bold; border-bottom:2px solid white; text-shadow:3px 3px 5px #000000" class="d-inline-block text-uppercase mb-2">Contact Us</span>
        </div>
        </div>
    </div>--%>
   <section id="content" style="margin-bottom: 0px;">

        
        <div class="content-wrap bg-kamekame" id="result-section" style="padding:0 0 30px 0">
            <div class="container clearfix" style="padding-left: 15px !important; padding-right: 15px !important;">
                <h2 class="text-white text-center font-family-raleway pt-5 pb-3">TODAY RESULT</h2>
                <div class="pt-3">

                    

                    <div id="ajax_res4d" class="skeleton-1">
<div class="row mb-3">
    <div class="col-12">
        <div class="dragonjp">
            <div class="row p-4">
                <div class="col-md-4 v-mid">
                    <div class="v-mid p-2 p-md-3 mb-2 mb-md-0">
                        <img class="w-100" src="../assets/images/KIMCO ICONS/dragonjp_red.png">
                        <div class="djp-dt">
                            15 AUG 2021, SUNDAY<br>
                            <span>next draw : 22 AUG 2021, SUN</span>
                            
                        </div>
                    </div>
                </div>
                <div class="col-md-8 pl-md-0 pr-md-4 v-mid">
                    <div class="djp-pool icon shine-3">
                        <span class="7d_JPool">USD70,000.00</span>
                    </div>
                    <div class="row text-center">
                        <div class="col-md-4 pr-md-0 v-mid">
                            <h4 class="bg-themered bg-themered-plate text-white p-2">
                                GRAND PRIZE
                            </h4>
                        </div>
                        <div class="col-md-8 pl-md-1 mt-1 mt-md-0">
                            <div class="djp-res">
                                <div class="djp-res-elm"><span class="L7_0">5</span></div>
                                <div class="djp-res-elm"><span class="L7_1">8</span></div>
                                <div class="djp-res-elm"><span class="L7_2">6</span></div>
                                <div class="djp-res-elm"><span class="L7_3">0</span></div>
                                <div class="djp-res-elm"><span class="L7_4">7</span></div>
                                <div class="djp-res-elm"><span class="L7_5">7</span></div>
                                <div class="djp-res-elm"><span class="L7_6">3</span></div>
                            </div>
                        </div>
                    </div>

                    <div class="row text-center mt-md-1 mt-2">
                        <div class="col-md-4 pr-md-0 v-mid">
                            <h4 class="bg-themered bg-gray-plate text-white p-2 txt15">
                                CONSOLATION PRIZE
                            </h4>
                        </div>
                        <div class="col-md-8 pl-md-1 mt-1 mt-md-0">
                            <div class="djp-res djp-res-conz">
                                <div class="djp-res-elm"><span>-</span></div>
                                <div class="djp-res-elm"><span class="L7_1">8</span></div>
                                <div class="djp-res-elm"><span class="L7_2">6</span></div>
                                <div class="djp-res-elm"><span class="L7_3">0</span></div>
                                <div class="djp-res-elm"><span class="L7_4">7</span></div>
                                <div class="djp-res-elm"><span class="L7_5">7</span></div>
                                <div class="djp-res-elm"><span class="L7_6">3</span></div>
                            </div>

                        </div>
                    </div>
                    <div class="text-white text-justify text-md-right txt12 p-1 pr-2">
                        * Click <a class="a-white" href="#"><b>HERE</b></a> to checkout our Consolation Prize Winner's listing
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>

<div class="resultdate ajresultdate">
    
    <img src="../assets/images/KIMCO ICONS/datebgleft-yellow.png" class="rdt-left">
    <img src="../assets/images/KIMCO ICONS/datebgright-yellow.png" class="rdt-right">
    <div class="rdt-center text-white text-center p-2 font-weight-bold uppercase rdt-center--yellow">Date : 18/08/2021, Wednesday</div>
</div>

<div id="result">
    <div class="row">
        <div class="col-md-7 col-xl-7 v-bottom">
            <div class="text-center mt-3">
                <table class="res-tbl-1 w-100 res-tbl-1-yellow">
                    <thead>
                        <tr>
                            <th colspan="2">4D</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1st Prize</td>
                            <td><span class="r">(<span id="1stAlph">K</span>)
                            </span>
                                <span id="1stPz">5799</span>
                            </td>
                        </tr>
                        <tr>
                            <td>2nd Prize</td>
                            <td><span class="r">(<span id="2ndAlph">H</span>)
                            </span>
                                <span id="2ndPz">8463</span>
                            </td>
                        </tr>
                        <tr>
                            <td>3rd Prize</td>
                            <td><span class="r">(<span id="3rdAlph">D</span>)
                            </span>
                                <span id="3rdPz">3705</span>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="text-center mt-3">
                <table class="res-tbl-2 w-100 res-tbl-2-yellow">
                    <thead>
                        <tr>
                            <th colspan="3">Special Prize</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><span class="r">A</span>
                                <span id="PzA">6542</span>
                            </td>
                            <td><span class="r">B</span>
                                <span id="PzB">9822</span>
                            </td>
                            <td><span class="r">C</span>
                                <span id="PzC">0176</span>
                            </td>
                        </tr>

                        <tr>
                            <td><span class="r">D</span>
                                <span id="PzD">----</span>
                            </td>
                            <td><span class="r">E</span>
                                <span id="PzE">5356</span>
                            </td>
                            <td><span class="r">F</span>
                                <span id="PzF">5064</span>
                            </td>
                        </tr>

                        <tr>
                            <td><span class="r">G</span>
                                <span id="PzG">0565</span>
                            </td>
                            <td><span class="r">H</span>
                                <span id="PzH">----</span>
                            </td>
                            <td><span class="r">I</span>
                                <span id="PzI">0465</span>
                            </td>
                        </tr>

                        <tr>
                            <td><span class="r">J</span>
                                <span id="PzJ">0914</span>
                            </td>
                            <td><span class="r">K</span>
                                <span id="PzK">----</span>
                            </td>
                            <td><span class="r">L</span>
                                <span id="PzL">7524</span>
                            </td>
                        </tr>

                        <tr>
                            <td colspan="3"><span class="r">M</span>
                                <span id="PzM">0096</span>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="text-center mt-3">
                <table class="res-tbl-2 w-100 res-tbl-2-yellow">
                    <thead>
                        <tr>
                            <th colspan="3">Consolation Prize</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><span class="r">N</span>
                                <span id="PzN">9629</span>
                            </td>
                            <td><span class="r">O</span>
                                <span id="PzO">0644</span>
                            </td>
                            <td><span class="r">P</span>
                                <span id="PzP">1644</span>
                            </td>
                        </tr>

                        <tr>
                            <td><span class="r">Q</span>
                                <span id="PzQ">4371</span>
                            </td>
                            <td><span class="r">R</span>
                                <span id="PzR">7935</span>
                            </td>
                            <td><span class="r">S</span>
                                <span id="PzS">1373</span>
                            </td>
                        </tr>

                        <tr>
                            <td><span class="r">T</span>
                                <span id="PzT">4022</span>
                            </td>
                            <td><span class="r">U</span>
                                <span id="PzU">8073</span>
                            </td>
                            <td><span class="r">V</span>
                                <span id="PzV">1192</span>
                            </td>
                        </tr>

                        <tr>
                            <td colspan="3"><span class="r">W</span>
                                <span id="PzW">7148</span>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

        </div>
        <div class="col-md-5 col-xl-5">
            <div class="h-100 flex-column d-flex">

                <div class="text-center position-relative mt-3 mb-3 icon">
                    <img src="../assets/images/KIMCO ICONS/4D_JPool_en-us.png" class="w-100">
                    <div class="jppool-box">
                        <div>
                            <span id="4d_jpool">USD2,472,275.10</span>
                            
                            <span class="dtstamp dtstamp--mod2">As per Yesterday, 18 Aug 2021</span>

                        </div>
                    </div>
                </div>

                <div class="flex-fill">

                    <div class="fourd-jp-v2 v-mid p-4">
                        <img class="w-100 m-auto-hori mb-3" src="../assets/images/KIMCO ICONS/jp-result_en-us.png">
                        <div class="fourd-jp-v2-top">
                            <div class="fourd-header">
                                <span id="4d_jpbonus">No Bonus</span>
                            </div>
                            <div>
                                <span id="4d_jpalphnum">A : 6542</span>
                            </div>
                            <div>
                                <span id="4d_jpperunit" class="c-gold">USD0.00/unit</span>
                            </div>
                        </div>
                        <hr class="white-translucent w-75">
                        <div class="fourd-jp-v2-btm">
                            <div class="fourd-header">
                                Number of Units : <span id="4d_jptotalunit">0</span>
                            </div>
                            <div>
                                <span id="4d_jppayout">USD0.00 ( USD2,472,275.10 x 0% )</span>
                            </div>
                            <div>
                                <span id="4d_jppyperwin" class="c-gold">USD0.00 ( USD0.00 / 0 )</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <hr class="mt-4 mb-2 gold">
    <div class="row" id="sec-6d">
        <div class="col-12">
            <div class="text-center mt-3">
                <table class="res-tbl-1 res-tbl-1--6d res-tbl-1--6d-yellow w-100">
                    <thead>
                        <tr>
                            <th colspan="14">6D</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1st <span class="m-hide">Prize</span></td>
                            
                            <td colspan="13">
                                <div class="text-center sixd-firstpz">
                                    <span class="L6_0">2</span>
                                    <span class="L6_1">4</span>
                                    <span class="L6_2">3</span>
                                    <span class="L6_3">8</span>
                                    <span class="L6_4">8</span>
                                    <span class="L6_5">9</span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>2nd <span class="m-hide">Prize</span></td>
                            <td class="L6_0">2</td>
                            <td class="L6_1">4</td>
                            <td class="L6_2">3</td>
                            <td class="L6_3">8</td>
                            <td class="L6_4">8</td>
                            <td class="void"><span></span></td>
                            <td class="voidor">or</td>
                            <td class="void"><span></span></td>
                            <td class="L6_1">4</td>
                            <td class="L6_2">3</td>
                            <td class="L6_3">8</td>
                            <td class="L6_4">8</td>
                            <td class="L6_5">9</td>
                        </tr>
                        <tr>
                            <td>3rd <span class="m-hide">Prize</span></td>
                            <td class="L6_0">2</td>
                            <td class="L6_1">4</td>
                            <td class="L6_2">3</td>
                            <td class="L6_3">8</td>
                            <td class="void"><span></span></td>
                            <td class="void"><span></span></td>
                            <td class="voidor">or</td>
                            <td class="void"><span></span></td>
                            <td class="void"><span></span></td>
                            <td class="L6_2">3</td>
                            <td class="L6_3">8</td>
                            <td class="L6_4">8</td>
                            <td class="L6_5">9</td>
                        </tr>

                        <tr>
                            <td>4th <span class="m-hide">Prize</span></td>
                            <td class="L6_0">2</td>
                            <td class="L6_1">4</td>
                            <td class="L6_2">3</td>
                            <td class="void"><span></span></td>
                            <td class="void"><span></span></td>
                            <td class="void"><span></span></td>
                            <td class="voidor">or</td>
                            <td class="void"><span></span></td>
                            <td class="void"><span></span></td>
                            <td class="void"><span></span></td>
                            <td class="L6_3">8</td>
                            <td class="L6_4">8</td>
                            <td class="L6_5">9</td>
                        </tr>

                        <tr>
                            <td>5th <span class="m-hide">Prize</span></td>
                            <td class="L6_0">2</td>
                            <td class="L6_1">4</td>
                            <td class="void"><span></span></td>
                            <td class="void"><span></span></td>
                            <td class="void"><span></span></td>
                            <td class="void"><span></span></td>
                            <td class="voidor">or</td>
                            <td class="void"><span></span></td>
                            <td class="void"><span></span></td>
                            <td class="void"><span></span></td>
                            <td class="void"><span></span></td>
                            <td class="L6_4">8</td>
                            <td class="L6_5">9</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="col-12 mt-3 hidden">
            <div class="row">
                <div class="col-md-4  v-bottom">
                    <div class="text-center position-relative icon">
                        <img src="/images/6D_JPool_en-us.png" class="w-100">
                        <div class="jppool-box">
                            <div>
                                USD574,870.65
                                
                                <span class="dtstamp dtstamp--mod2">As per Yesterday, 18 Aug 2021</span>

                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-8 ">

                    <div class="sixd-jp-v2 v-mid p-4 m-hide">
                        <img class="sm-100 w-50 m-auto-hori mb-4" src="/images/jp-result_en-us.png">
                        <div class="row">
                            <div class="col-md-6 v-mid sixd-jp-v2-left">
                                <div class="sixd-header">
                                    No Bonus
                                </div>
                                <div>
                                    6542
                                </div>
                                <div class="c-gold">
                                    USD0.00/unit
                                </div>
                                <hr class="white-translucent hr-vertical">
                            </div>

                            <div class="col-md-6 v-mid">
                                <div class="sixd-header">
                                    Number of Units : 0
                                </div>
                                <div>
                                    USD0.00 ( USD574,870.65 x 0% )
                                </div>
                                <div class="c-gold">
                                    USD0.00 ( USD0.00 / 0 )
                                </div>
                            </div>
                        </div>
                    </div>

                    
                    <div class="fourd-jp-v2 v-mid p-4 mt-3 xl-hide">
                        <img class="sm-100 w-75 m-auto-hori mb-3" src="/images/jp-result_en-us.png">
                        <div class="fourd-jp-v2-top">
                            <div class="fourd-header">
                                No Bonus
                            </div>
                            <div>
                                6542
                            </div>
                            <div>
                                USD0.00/unit
                            </div>
                        </div>
                        <hr class="white-translucent w-75">
                        <div class="fourd-jp-v2-btm">
                            <div class="fourd-header">
                                Number of Units : 0
                            </div>
                            <div>
                                USD0.00 ( USD574,870.65 x 0% )
                            </div>
                            <div>
                                USD0.00 ( USD0.00 / 0 )
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </div>
    
</div>
</div>
                </div>
            </div>
        </div>

    
        
    </section>

    
    <!--Scripts-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/ccf7730c24.js"></script>
    <script src="../Scripts/header1.js"></script>
    
</asp:Content>

