package com.pol3.webdisp.dao;

import com.pol3.webdisp.model.Dog;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.TypedQuery;
import java.util.List;

public class DogDAOImpl implements DogDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public DogDAOImpl() {}

    public DogDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    @Transactional
    @SuppressWarnings({"unchecked"})
    public List<Dog> list() {
        TypedQuery<Dog> dogTypedQuery = sessionFactory
                .getCurrentSession()
                .createQuery("FROM Dog");

        return dogTypedQuery.getResultList();
    }
}
