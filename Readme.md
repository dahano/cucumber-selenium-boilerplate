<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://stackedit.io/style.css" />
</head>

<body class="stackedit">
  <h1>Overview</h1>
  <p>This boilerplate is ideal for getting started on an e-commerce web app. I'm using <a href="https://cucumber.io/">Cucumber</a> and <a href="http://www.seleniumhq.org/">Selenium</a>. I've added some really popular Gems that i've used in the past like RSPEC.</p>

  <h3 id="install">Setup</h3>
  <span>This project will built using <code>ruby 2.4.3</code></span>
  <ol>
    <li>Make sure you have Bundler installed https://rubygems.org/gems/bundler/versions/1.10.6</li>
    <li>Download the driver binaries and add them to the ./drivers folder </li>
    <li>Chromedriver: https://chromedriver.chromium.org/downloads</li>
    <li>GeckoDriver: https://github.com/mozilla/geckodriver/releases</li>
    <li>Run <code>bundle install</code></li>
  </ol>

  <h3>Anatomy of script to run test</h3>
  <li><code>cucumber BROWSER='browser-name' -t 'optional_tag'</code></li>
  <h3 id="run-sample-test">Supported Browser Types</h3>
  <ol>
    <li>chrome</li>
    <li>chrome-mobile</li>
    <li>chrome-mobile-headless</li>
    <li>chrome-headless</li>
    <li>safari</li>
    <li>safari-mobile</li>
  </ol>
</body>
</html>
