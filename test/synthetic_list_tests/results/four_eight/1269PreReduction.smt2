
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
(assert (and (= l1 Nil) (= l1 l2) (is-Cons l1)) )
(assert (not (= l3 Nil)) )
(assert (= l2 l3) )
(assert (or (is-Nil l2) (= l3 l1) (is-Nil Nil) (is-Nil l2)) )
(assert (and (= l2 Nil) (is-Cons Nil) (= l0 l2)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (= l3 Nil)) )
(check-sat)
