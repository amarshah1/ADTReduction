
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (and (is-Cons Nil) (is-Nil Nil) (= l2 l2)) )
(assert (is-Nil Nil) )
(assert (or (= l0 Nil) (is-Cons Nil) (= l1 Nil) (is-Cons l1)) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(assert (and (= l0 Nil) (is-Cons Nil) (= l2 l3)) )
(assert (= l3 l3) )
(assert (is-Cons Nil) )
(check-sat)
