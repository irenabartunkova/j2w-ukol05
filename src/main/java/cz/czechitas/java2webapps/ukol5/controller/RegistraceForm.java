package cz.czechitas.java2webapps.ukol5.controller;
import javax.validation.constraints.*;
import java.time.LocalDate;
import java.time.Period;
import org.springframework.format.annotation.DateTimeFormat;

public class RegistraceForm {

    @NotBlank
    private String jmeno;
    @NotBlank
    private String prijmeni;

    @NotNull
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    public LocalDate datumNarozeni;

    @NotBlank
    private String pohlavi;
    @NotBlank
    private String turnus;

    private String emailRodic;
    private String telefonRodic;

    public String getJmeno() {
        return jmeno;
    }
    public void setJmeno(String jmeno) {
        this.jmeno = jmeno;
    }

    public String getPrijmeni() {
        return prijmeni;
    }
    public void setPrijmeni(String prijmeni) {
        this.prijmeni = prijmeni;
    }

    public LocalDate getDatumNarozeni() { return datumNarozeni;}
    public void setDatumNarozeni(LocalDate datumNarozeni) { this.datumNarozeni = datumNarozeni;}

    public String getPohlavi() { return pohlavi;}
    public void setPohlavi(String pohlavi) { this.pohlavi = pohlavi;}

    public String getTurnus() {return turnus;}
    public void setTurnus(String turnus) { this.turnus = turnus; }

    public String getEmailRodic() { return emailRodic;}
    public void setEmailRodic(String emailRodic) { this.emailRodic = emailRodic;}

    public String getTelefonRodic() { return telefonRodic;}
    public void setTelefonRodic(String telefonRodic) { this.telefonRodic = telefonRodic;}

    public int getVek() {
        Period period = datumNarozeni.until(LocalDate.now());
        int vek = period.getYears();
        return vek;

    }
}