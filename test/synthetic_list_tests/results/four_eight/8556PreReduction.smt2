
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
(assert (and (is-Cons Nil) (= l0 l1)) )
(assert (or (is-Nil l2) (= l2 l3) (= l0 Nil) (= l1 l3)) )
(assert (not (is-Cons Nil)) )
(assert (= l2 Nil) )
(assert (not (= l1 l2)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (and (is-Cons l1) (= l2 l3)) )
(check-sat)