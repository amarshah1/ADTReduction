
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
(assert (= l0 Nil) )
(assert (and (= l1 Nil) (= l2 l3) (= l1 Nil) (= l0 l2)) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons l3) )
(assert (= l2 Nil) )
(assert (not (is-Nil Nil)) )
(assert (and (is-Nil l1) (= l1 Nil) (= l1 Nil)) )
(assert (and (= l2 Nil) (is-Cons Nil)) )
(check-sat)
