package com.bs.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bs.modal.FileUpload;

@Repository
public interface FileRepository extends JpaRepository<FileUpload, Long> {
}
