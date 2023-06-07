
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
(assert (or (= l2 l1) (= l0 l3) (= l0 l2)) )
(assert (is-Cons Nil) )
(assert (not (= l1 l3)) )
(assert (not (= l0 Nil)) )
(assert (not (= l2 Nil)) )
(assert (and (is-Cons Nil) (= l1 l1)) )
(assert (is-Nil l2) )
(assert (and (= l1 Nil) (is-Cons l2)) )
(check-sat)
