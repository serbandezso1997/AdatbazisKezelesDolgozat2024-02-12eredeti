
/*
 * Serbán Dezső Dávid
 * Szoftverfejlesztő és tesztelő technikus
 * I/2/E
 * 2024-02-08
 */
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.SQLException;

public class StudentData {
    // felhasználónév
    String username = "diary";
    // jelszó
    String password = "titok";
    // adatbázis neve
    String databaseName = "diary";
    // url a kapcsolat eléréséhez
    String url = "jdbc:mariadb://localhost:3306/" + databaseName;

    public void getStudents() {
        try {
            // kapcsolódás az adatbázishoz
            Connection connect = DriverManager.getConnection(url, username, password);

            // lekérdezés
            String sql = "SELECT * FROM `students`;";
            // statement kreálása
            Statement st = connect.createStatement();
            // lekérdezés átpasszolása
            ResultSet rSet = st.executeQuery(sql);

            // adatok megjelenítése a képernyőn
            while (rSet.next()) {
                System.out.print(rSet.getInt("id") + "\t");
                System.out.print(rSet.getString("name") + "\t");
                System.out.print(rSet.getString("city") + "\t");
                System.out.println();
            }
        } catch (SQLException ex) {
            System.err.println("Valami hiba történt!");
            System.err.println(ex.getMessage());
        }

    }

}
