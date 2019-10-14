<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Kategori_model
 *
 * @author Siti Zulaiha
 */
class Kategori_model  extends CI_Model{
  var $table = 'kategori';
    public function get_all_kategori() {
        $this->db->from('kategori');
        $query = $this->db->get();
        return $query->result();
    }

    public function get_by_id($id) {
        $this->db->from($this->table);
        $this->db->where('id_kategori', $id);
        $query = $this->db->get();
        return $query->row();
    }
    public function kategori_add($data) {
        $this->db->insert($this->table, $data);
        return $this->db->insert_id();
    }

    public function kategori_update($where, $data) {
        $this->db->update($this->table, $data, $where);
        return $this->db->affected_rows();
    }

    public function delete_by_id($id) {
        $this->db->where('id_kategori', $id);
        $this->db->delete($this->table);
    }

}

