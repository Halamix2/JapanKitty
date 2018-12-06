<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
	<head>
			<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
			<meta charset="utf-8">
			<title>{{ config('app.name', 'Laravel') }}</title>
      <meta http-equiv="X-UA-Compatible" content="IE=edge" >
      <meta name="csrf-token" content="{{ csrf_token() }}">
      <link href="{{ asset('css/main.css') }}" rel="stylesheet">
  </head>
  <body>
    <div id="app">
        @yield('content')
    </div>
    <script src="{{ asset('js/app.js') }}"></script>
    <!-- Matomo -->
    <!--TODO get matomo code here -->
    <!-- End Matomo Code -->
  </body>
</html>
