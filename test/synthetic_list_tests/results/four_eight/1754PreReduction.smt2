
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
(assert (= l1 Nil) )
(assert (and (is-Cons l3) (is-Cons Nil) (= l3 l1)) )
(assert (= l0 Nil) )
(assert (not (= l2 Nil)) )
(assert (not (= l3 Nil)) )
(assert (or (= l0 Nil) (= l2 l2) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (= l1 l2) (= l0 Nil) (is-Nil l1)) )
(check-sat)
