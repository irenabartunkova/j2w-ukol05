[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registrace na letní dětský tábor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
<div class="container">
    <form class="registrace" action="/" method="post">
        <h1>Formular k registraci na detsky tabor</h1>

        <label for="jmeno" class="radek">Jmeno ditete:</label>
        [@spring.formInput path="form.jmeno" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="prijmeni" class="radek">Prijmeni ditete:</label>
        [@spring.formInput path="form.prijmeni" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="datum narozeni" class="radek">Datum narozeni ditete:</label>
        [@spring.formInput path="form.datumNarozeni" fieldType="date" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="pohlavi" class="radek">Pohlavi ditete:</label>
        [@spring.formSingleSelect path="form.pohlavi" options={
        "": "",
        "1": "zena",
        "2": "muz"
        } /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="turnus" class="radek">Turnus:</label>
        [@spring.formSingleSelect path="form.turnus" options={
        "": "",
        "1": "5.-11.července 2022",
        "2": "12.-18.července 2022",
        "3": "19.-25.července 2022"
        } /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="email" class="radek">E-mail na rodice:</label>
        [@spring.formInput path="form.emailRodic" fieldType="email" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="telefon" class="radek">Telefon na rodice:</label>
        [@spring.formInput path="form.telefonRodic" fieldType="number" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek controls">
            <button type="submit"><h3>Registrovat</h3></button>
        </div>

    </form>
</div>
</body>
</html>
