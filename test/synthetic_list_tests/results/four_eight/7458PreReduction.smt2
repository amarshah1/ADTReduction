
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
(assert (is-Nil l1) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (= l0 Nil)) )
(assert (= l3 Nil) )
(assert (and (= l2 Nil) (is-Cons l3)) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (and (= l1 l1) (is-Cons l1) (is-Cons Nil) (= l1 Nil)) )
(check-sat)
