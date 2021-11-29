<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="resultStatistics.aspx.vb" Inherits="CMBusnLocation_resultStatistics" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
        .tbl-2 tr:nth-child(odd) {
            background-color: #e6e6e6;
        }
        .tbl-2 tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .tbl-2 th {
            background-color: #003032;
            color: white;
            font-weight: bold;
            width: calc(100%/6);
            padding: 5px 10px;
            font-size: 13px;
            text-transform: uppercase;
        }
        .tbl-2 td {
            padding: 5px 10px;
            font-size: 13px;
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
        
        .font-family-raleway {
            font-family: 'Raleway' !important;
        }
        /*font class*/
        .datepicker.default {
            background: no-repeat center;
            background-color: white;
            background-position-x: 98%;
            background-size: 21px;
        }
        .large-font {
            font-size: 1rem;
        }
        .content-wrap {
            padding: 0 0 30px 0 !important;

        }
        select.select-center {
            text-align-last: center;
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
                                    <ul class="menu-pos-invert" id="L1" style="display:none;">
                                        
                                        <li><a href="4D.aspx">KIM LOTTO 4D</a></li>
                                        <li><a href="6D.aspx">KIM LOTTO 6D</a></li>
                                        <li><a href="prize.aspx">Prize Structure</a></li>
                                        <li><a href="Machine.aspx">Machine Design &amp; Spec</a></li>
                                        <li><a href="How-to-draw.aspx">How We Draw?</a></li>
                                    </ul>
                                </li>
                                <li class="sub-menu"><a href="#" class="sf-with-ul">About Us</a>
                                    <ul class="menu-pos-invert" id="L2" style="display:none;">
                                        <li><a href="about-us.aspx">About Us</a></li>
                                        <li><a href="long-long.aspx">About LONG LONG</a></li>
                                        <li><a href="about-corporate-value.aspx">Our Corporate Value</a></li>
                                        <li><a href="about-play-responsibility.aspx">Play Responsibility</a></li>
                                        <li><a href="about-protect.aspx">Protect Yourself</a></li>
                                        <li><a href="about-contact-us.aspx">Contact Us</a></li>
                                    </ul>
                                </li>
                                <li class="sub-menu"><a href="#" class="sf-with-ul">Results</a>
                                    <ul class="menu-pos-invert" id="L3" style="display: none;">
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
                                    <ul class="menu-pos-invert" id="L4" style="display: none;">
                                        <li><a href="dragonJackpot.aspx">Dragon Jackpot 6+1D</a></li>
                                        <li><a href="jackpot4D.aspx">4D Jackpot Tracker</a></li>
                                        <li><a href="jackpotHowItWorks.aspx">How It Works?</a></li>
                                        <li><a href="jackpotCalculator.aspx">Jackpot Calculator</a></li>
                                        <li><a href="jackpotHowToWin.aspx">How to Win?</a></li>
                                        <li><a href="jackpotSharingRules.aspx">Sharing Rules</a></li>
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
    <div class="banner-box">
        <img src="../assets/images/KIMCO ICONS/20190507 web Cover-15.jpg" class="m-hide">
        <img src="../assets/images/KIMCO ICONS/20190820 web Cover Mobile-03.jpg" class="xl-hide">
        <div class="banner-box-title v-mid">
            <div><span class="inline-block uppercase">Results</span></div>
        </div>
    </div>
    <div class="content-wrap bg-verylightgray" id="ourgame-section">
        <div class="container clearfix p-3">
            <h3 class="m-0 bg-golden text-center text-white">STATISTIC</h3>
            
            <div class="center mt-4">
                <div class="col-md-6 offset-md-3 col-xl-4 offset-xl-4">
                    <div class="row text-left">
                        <div class="col-md-4 txt13">
                            Play Type :
                        </div>
                        <div class="col-md-8">
                            <select class="w-100 select-center large-font custom-select" onchange="maxDigitLength(this)" name="sltPlayType" id="sltPlayType">
                                <option value="4">4D</option>
                                
                            </select>
                        </div>
                    </div>

                    <div class="row text-left mt-2">
                        <div class="col-md-4 txt13">
                            Search For :
                        </div>
                        <div class="col-md-8">
                            <select class="w-100 select-center large-font custom-select" name="sltDateRange" id="sltDateRange">
                                <option value="1">Highest Draw Number</option>
                                <option value="2">Highest 1st Prize Number</option>
                                <option value="3">Highest 2nd Prize Number</option>
                                <option value="4">Highest 3rd Prize Number</option>
                                <option value="5">Permutation Highest</option>
                            </select>
                        </div>
                    </div>

                    <div class="row text-left mt-2">
                        <div class="col-md-4 txt13">
                            Number :
                        </div>
                        <div class="col-md-8">
                            <input id="inpNumber" value="" name="inpNumber" class="w-100 text-center large-font form-control" pattern="\d*" maxlength="4" minlength="4" required="" placeholder="E.g. 1234">
                        </div>
                    </div>

                    <div class="text-right pt-2">
                        <button type="reset" class="btn-1 bg-kimco sm-100 mb-2 large-font pl-4 pr-4">RESET</button>
                        <input type="submit" name="ctl00$cphBody$btnSearch" value="SEARCH" id="cphBody_btnSearch" class="btn-1 bg-golden sm-100 large-font pl-4 pr-4">
                    </div>
                </div>
            </div>
            <hr class="dashed">
            <div class="text-center">
                <h3 class="m-0 bg-golden  text-white uppercase">Results</h3>
                
                <span class="txt15 font-weight-bold d-none">Sorry, no winnings currently. Please try again.</span>
                <div class="txt13 mt-2 center d-none">Check out our Result Statistic for some of our most
luckiest 4 digit numbers <a href="/redirect/?h=RSTAT">here</a>.</div>
                <span class="txt15 font-weight-bold ">This page provides an updated statistics of KimcoLotto's past results.<br>You can check the highest strike frequency of number(s).</span>
                <div class="w-100 pt-3 overflow-auto">
                    <table class="tbl-2 w-75 sm-100 m-auto">
                        <thead>
                            <tr>
                                <th>Rank</th>
                                <th>Number</th>
                                <th>Last Draw #</th>
                                <th>Last Draw Date</th>
                                <th>Prize Type</th>
                                <th>Frequency</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <tr>
                                <td>1</td>
                                <td><span class="text-danger">1420</span></td>
                                <td>1776/2021</td>
                                <td>2021-10-27</td>
                                <td>Special Prize</td>
                                <td>15</td>
                            </tr>
                            
                            <tr>
                                <td>2</td>
                                <td><span class="text-danger">8869</span></td>
                                <td>1672/2021</td>
                                <td>2021-07-15</td>
                                <td>Consolation Prize</td>
                                <td>14</td>
                            </tr>
                            
                            <tr>
                                <td>3</td>
                                <td><span class="text-danger">4404</span></td>
                                <td>1766/2021</td>
                                <td>2021-10-17</td>
                                <td>Consolation Prize</td>
                                <td>12</td>
                            </tr>
                            
                            <tr>
                                <td>4</td>
                                <td><span class="text-danger">4571</span></td>
                                <td>1668/2021</td>
                                <td>2021-07-11</td>
                                <td>Special Prize</td>
                                <td>12</td>
                            </tr>
                            
                            <tr>
                                <td>5</td>
                                <td><span class="text-danger">5683</span></td>
                                <td>1762/2021</td>
                                <td>2021-10-13</td>
                                <td>Consolation Prize</td>
                                <td>12</td>
                            </tr>
                            
                            <tr>
                                <td>6</td>
                                <td><span class="text-danger">5991</span></td>
                                <td>1673/2021</td>
                                <td>2021-07-16</td>
                                <td>Special Prize</td>
                                <td>12</td>
                            </tr>
                            
                            <tr>
                                <td>7</td>
                                <td><span class="text-danger">6329</span></td>
                                <td>1776/2021</td>
                                <td>2021-10-27</td>
                                <td>Special Prize</td>
                                <td>12</td>
                            </tr>
                            
                            <tr>
                                <td>8</td>
                                <td><span class="text-danger">6464</span></td>
                                <td>1670/2021</td>
                                <td>2021-07-13</td>
                                <td>Consolation Prize</td>
                                <td>12</td>
                            </tr>
                            
                            <tr>
                                <td>9</td>
                                <td><span class="text-danger">7365</span></td>
                                <td>1771/2021</td>
                                <td>2021-10-22</td>
                                <td>Consolation Prize</td>
                                <td>12</td>
                            </tr>
                            
                            <tr>
                                <td>10</td>
                                <td><span class="text-danger">0618</span></td>
                                <td>1446/2020</td>
                                <td>2020-12-01</td>
                                <td>Special Prize</td>
                                <td>11</td>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>
                
                

            </div>
        </div>
    </div>
</asp:Content>

