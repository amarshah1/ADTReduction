
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
(assert (or (= l1 Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (or (= l3 l0) (= l0 Nil) (is-Cons Nil) (is-Nil l3)) )
(assert (= l2 Nil) )
(assert (not (= l1 l1)) )
(assert (and (= l1 Nil) (is-Cons l1)) )
(assert (= l0 Nil) )
(assert (or (= l1 Nil) (= l1 Nil) (= l1 Nil)) )
(assert (and (= l1 Nil) (is-Nil Nil) (= l3 Nil) (is-Cons l2)) )
(check-sat)
