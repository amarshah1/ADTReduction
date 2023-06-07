
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
(assert (and (is-Nil l2) (is-Cons l0) (is-Nil l3)) )
(assert (and (= l3 l3) (= l0 Nil) (is-Cons l1)) )
(assert (or (= l1 Nil) (= l1 Nil) (= l0 Nil) (= l2 Nil)) )
(assert (or (is-Cons Nil) (= l1 Nil) (= l3 Nil)) )
(assert (and (= l3 Nil) (= l1 l1) (= l1 Nil) (= l1 Nil)) )
(assert (= l3 Nil) )
(assert (is-Nil l1) )
(assert (not (= l2 l0)) )
(check-sat)