[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Rekapitulace registrace</title>
    <link rel="stylesheet" href="/style.css"/>
</head>
<body>
<div class="container">
    <form class="tabor" action="/" method="post">
        <div class="registrace">
            <h1>Rekapitulace registrace</h1>
            <div><h2>Registrace byla uspesna.</h2>

                <label for="jmeno" class="radek">Jmeno ditete:</label>
                [@spring.formInput path="form.jmeno" attributes="readonly"/]
                <div class="error">[@spring.showErrors "<br>"/]</div>

                <label for="prijmeni" class="radek">Prijmeni ditete:</label>
                [@spring.formInput path="form.prijmeni" attributes="readonly"/]
                <div class="error">[@spring.showErrors "<br>"/]</div>

                <label for="datum narozeni" class="radek">Datum narozeni ditete:</label>
                [@spring.formInput path="form.datumNarozeni" fieldType="date" attributes="readonly"/]
                <div class="error">[@spring.showErrors "<br>"/]</div>

                <label for="pohlavi" class="radek">Pohlavi ditete:</label>
                [@spring.formSingleSelect path="form.pohlavi" attributes="readonly" options={
                "": "",
                "1": "zena",
                "2": "muz"
                } /]
                <div class="error">[@spring.showErrors "<br>"/]</div>

                <label for="turnus" class="radek">Turnus:</label>
                [@spring.formSingleSelect path="form.turnus" attributes="readonly" options={
                "": "",
                "1": "5.-11.července 2022",
                "2": "12.-18.července 2022",
                "3": "19.-25.července 2022"
                } /]
                <div class="error">[@spring.showErrors "<br>"/]</div>

                <label for="email" class="radek">E-mail na rodice:</label>
                [@spring.formInput path="form.emailRodic" fieldType="email" attributes="readonly"/]
                <div class="error">[@spring.showErrors "<br>"/]</div>

                <label for="telefon" class="radek">Telefon na rodice:</label>
                [@spring.formInput path="form.telefonRodic" fieldType="number" attributes="readonly"/]
                <div class="error">[@spring.showErrors "<br>"/]</div>

            </div>
        </div>
    </form>
</div>
</body>
</html>
