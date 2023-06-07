
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
(assert (and (= l2 l0) (= l1 Nil)) )
(assert (not (= l1 Nil)) )
(assert (and (= l3 Nil) (= l1 Nil) (= l3 Nil) (is-Nil l1)) )
(assert (is-Nil l1) )
(assert (not (= l0 l2)) )
(assert (not (= l1 l3)) )
(assert (and (= l2 l3) (is-Cons Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (= l3 Nil) )
(check-sat)
