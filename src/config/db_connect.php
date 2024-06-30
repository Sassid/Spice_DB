<?php

function connectDB()
{
    try {
        $pdo = new PDO("mysql:host=localhost;dbname=spice_db", "root", "", [PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION]);
        return $pdo;
    } catch (PDOException $e) {
        echo "Error : " . $e->getMessage();
        exit();
    }
}
