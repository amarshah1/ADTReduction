
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
(assert (= l2 Nil) )
(assert (or (= l0 l1) (= l3 Nil) (= l3 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (or (is-Cons l3) (= l3 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (and (is-Cons Nil) (= l1 Nil) (is-Nil l2)) )
(assert (not (= l0 Nil)) )
(assert (and (= l1 Nil) (= l2 l1) (= l2 Nil) (= l2 Nil)) )
(assert (and (is-Nil Nil) (= l3 Nil)) )
(check-sat)
