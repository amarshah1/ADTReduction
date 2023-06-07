
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
(assert (or (= l2 l1) (= l3 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (is-Nil l0) )
(assert (not (= l1 Nil)) )
(assert (not (= l1 Nil)) )
(assert (not (= l3 l1)) )
(assert (and (= l1 Nil) (is-Cons Nil) (= l3 l3) (= l0 Nil)) )
(assert (or (= l2 Nil) (= l2 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (not (= l2 l2)) )
(check-sat)
