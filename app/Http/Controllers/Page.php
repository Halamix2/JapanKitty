<?php

namespace Japankitty\Http\Controllers;

use Illuminate\Http\Request;

class Page extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }

    public function homePage()
    {
        return view('home');
    }

    public function coursePage()
    {
        return view('course');
    }
}
