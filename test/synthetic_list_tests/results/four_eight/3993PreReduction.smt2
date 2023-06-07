
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
(assert (not (= l2 l1)) )
(assert (and (= l3 Nil) (= l1 Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (= l1 Nil) (= l1 Nil) (= l3 Nil)) )
(assert (= l0 Nil) )
(assert (is-Cons l0) )
(check-sat)
