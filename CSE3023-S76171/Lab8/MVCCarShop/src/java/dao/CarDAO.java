/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.Car;
import util.DBConnection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author junel
 */
public class CarDAO {
    
    public boolean insertCar(Car car) throws SQLException {
        
        String sql = "INSERT INTO carpricelist (brand, model, cylinder, price) VALUES (?, ?, ?, ?)";
        
        try (Connection conn = DBConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)) {
            
            ps.setString(1, car.getBrand());
            ps.setString(2, car.getModel());
            ps.setInt(3, car.getCylinder());
            ps.setDouble(4, car.getPrice());

            return ps.executeUpdate() > 0;
            
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public Car selectCar(int Car_id) throws SQLException{
        Car car = null;
        
        String sql = "SELECT brand, model, cylinder, price FROM carpricelist WHERE Car_id = ?";
        
        try (Connection conn = DBConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)) {
         
            ps.setInt(1, Car_id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                String brand = rs.getString("brand");
                String model = rs.getString("model");
                int cylinder = rs.getInt("cylinder");
                double price = rs.getDouble("price");
                
                car = new Car(Car_id, brand, model, cylinder, price);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return car;
    }
    
    public List <Car> selectAllCars() {
        List <Car> cars = new ArrayList < > ();
        
        String sql = "SELECT * FROM carpricelist";
        
        try (Connection conn = DBConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery()) {
            
            while (rs.next()) {
                int Car_id = rs.getInt("Car_id");
                String brand = rs.getString("brand");
                String model = rs.getString("model");
                int cylinder = rs.getInt("cylinder");
                double price = rs.getDouble("price");
                cars.add(new Car(Car_id, brand, model, cylinder, price));
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cars;
    }
    
    public boolean deleteCar(int id) throws SQLException {
        boolean rowDeleted;
        
        String sql = "DELETE FROM carpricelist WHERE Car_id = ?";
        
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            
            ps.setInt(1, id);
            
            rowDeleted = ps.executeUpdate() > 0;
        }
        return rowDeleted;
    }
    
    public boolean updateCar(Car car) throws SQLException {
        boolean rowUpdated;
        
        String sql = "UPDATE carpricelist SET brand = ?, model = ?, cylinder = ?, price = ? WHERE Car_id = ?";
        
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            
            ps.setString(1, car.getBrand());
            ps.setString(2, car.getModel());
            ps.setInt(3, car.getCylinder());
            ps.setDouble(4, car.getPrice());
            ps.setInt(5, car.getCarId());
            
            rowUpdated = ps.executeUpdate() > 0;
        }
        
        return rowUpdated;
    }
}
