
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
(assert (and (is-Cons l2) (= l1 Nil) (= l3 Nil) (is-Cons l2)) )
(assert (or (= l3 Nil) (= l1 Nil) (= l1 Nil)) )
(assert (= l3 Nil) )
(assert (= l1 Nil) )
(assert (not (= l1 l2)) )
(assert (and (is-Cons Nil) (= l1 l0) (= l1 Nil)) )
(assert (or (= l3 l2) (is-Cons Nil) (= l0 Nil)) )
(assert (= l3 Nil) )
(check-sat)