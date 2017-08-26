package com.pol3.webdisp.dao;

import com.pol3.webdisp.model.Dog;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.CriteriaSpecification;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

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
    @SuppressWarnings({"unchecked", "deprecation"})
    public List<Dog> list() {
        return (List<Dog>) sessionFactory.getCurrentSession()
                .createCriteria(Dog.class)
                .setResultTransformer(CriteriaSpecification.DISTINCT_ROOT_ENTITY).list();
    }
}
